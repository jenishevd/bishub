import 'package:bishub_app/pages/sign_in/sign_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../common_widgets.dart';

import '../bloc/sign_in_blocs.dart';
import '../bloc/sign_in_events.dart';
import '../bloc/sign_in_states.dart';

class logIn extends StatefulWidget {
  const logIn({super.key});

  @override
  State<logIn> createState() => _logInState();
}

class _logInState extends State<logIn> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(builder: (context, state) {
      return Container(
        color: Colors.white,
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: buildAppBar('Sign in'),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 66.h),
                    padding: EdgeInsets.only(left: 25.w, right: 25.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        reusableText('Email'),
                        buildTextField(
                            'Enter your email address', 'email', 'user',
                            (value) {
                          context.read<SignInBloc>().add(EmailEvent(value));
                        }),
                        SizedBox(height: 10.h),
                        reusableText('Password'),
                        buildTextField(
                            'Enter your password', 'password', 'lock', (value) {
                          context.read<SignInBloc>().add(PasswordEvent(value));
                        }),
                        forgotPassword()
                      ],
                    ),
                  ),
                  buildButtonSignIn('Log in', 'login', () {
                    SignInController(context: context).handleSignIn('email');
                  }),
                  buildButtonSignIn('Sign Up', 'register', () {
                    Navigator.of(context).pushNamed('logIn');
                  }),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
