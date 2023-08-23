import 'package:bishub_app/common/widgets/flutter_toast.dart';
import 'package:bishub_app/pages/sign_in/sign_up/bloc/sign_up_blocs.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpController {
  final BuildContext context;
  const SignUpController({required this.context});

  Future<void> handleEmailSignUp() async {
    final state = context.read<SignUpBlocs>().state;
    String userName = state.userName;
    String email = state.email;
    String password = state.password;
    String rePassword = state.rePassword;

    if (userName.isEmpty) {
      toastInfo(msg: 'User name can not be empty');
      return;
    }

    if (email.isEmpty) {
      toastInfo(msg: 'Email can not be empty');
      return;
    }

    if (password.isEmpty) {
      toastInfo(msg: 'Password can not be empty');
      return;
    }

    if (rePassword.isEmpty) {
      toastInfo(msg: 'Your password conformation is wrong ');
      return;
    }

    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      if (credential.user != null) {
        await credential.user?.sendEmailVerification();
        await credential.user?.updateDisplayName(userName);
        toastInfo(
            msg:
                'An email has been sent your registered email. To activate it please check your email box.');
        Navigator.of(context).pop();
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        toastInfo(msg: 'The password provided is too weak');
      } else if (e.code == 'email-already-in-use') {
        toastInfo(msg: 'The email is already in use');
      } else if (e.code == 'invalid-email') {
        toastInfo(msg: 'Your email is invalid');
      }
    }
  }
}
