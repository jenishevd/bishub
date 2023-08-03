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
          //
        }
        if (password.isEmpty) {
          //
        }
        try {
          final credentials = await FirebaseAuth.instance
              .signInWithEmailAndPassword(
                  email: emailAddress, password: password);
          if (credentials.user == null) {
            //
          }
          if (!credentials.user!.emailVerified) {
            //
          }
          var user = credentials.user;
          if (user != null) {
            //we got verified user from firebase
          } else {
            //we have error getting user from firebase
          }
        } catch (e) {}
      }
    } catch (e) {}
  }
}
