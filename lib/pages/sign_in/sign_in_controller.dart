import 'package:bishub_app/common/widgets/flutter_toast.dart';
import 'package:bishub_app/pages/sign_in/bloc/sign_in_blocs.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInController {
  final BuildContext context;

  const SignInController({required this.context});

  Future<void> handleSignIn(String type) async {
    try {
      if (type == 'email') {
        final state = context.read<SignInBloc>().state;
        String emailAddress = state.email;
        String password = state.password;
        if (emailAddress.isEmpty) {
          toastInfo(msg: 'You need to fill email address');
          return;
        }

        if (password.isEmpty) {
          toastInfo(msg: 'You need to fill password');
          return;
        }

        try {
          final credentials = await FirebaseAuth.instance
              .signInWithEmailAndPassword(
                  email: emailAddress, password: password);
          if (credentials.user == null) {
            toastInfo(msg: 'User doesn not exist');
            return;
          }
          if (!credentials.user!.emailVerified) {
            toastInfo(msg: 'You need to verify your email account');
            return;
          }
          var user = credentials.user;
          if (user != null) {
            print('user exist');
            //we got verified user from firebase
          } else {
            toastInfo(msg: 'Currently you are not a user of this app');
            return;
            //we have error getting user from firebase
          }
        } on FirebaseAuthException catch (e) {
          if (e.code == 'user-not-found') {
            toastInfo(msg: 'No user found that email');
          } else if (e.code == 'wrong-password') {
            toastInfo(msg: 'Wrong password provided that user');
          } else if (e.code == 'invaliv-email') {
            toastInfo(msg: 'Your email format is wrong');
          } else if (e.code == 'invalid-email') {
            toastInfo(msg: 'Your email format is wrong');
          }
        }
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
