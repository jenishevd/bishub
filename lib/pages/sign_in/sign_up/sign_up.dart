// ignore_for_file: camel_case_types

import 'package:bishub_app/pages/sign_in/bloc/sign_in_blocs.dart';
import 'package:bishub_app/pages/sign_in/bloc/sign_in_events.dart';
import '../common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class logIn extends StatefulWidget {
  const logIn({super.key});

  @override
  State<logIn> createState() => _logInState();
}

class _logInState extends State<logIn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.white,
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: buildAppBar('Sign up'),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Center(
                      child: reusableText(
                          'Enter your details below & free sign up')),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 40.h),
                        padding: EdgeInsets.only(left: 25.w, right: 25.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            reusableText('User name'),
                            buildTextField(
                                'Enter your user name', 'email', 'user',
                                (value) {
                              //context.read<SignInBloc>().add(EmailEvent(value));
                            }),
                            SizedBox(height: 10.h),
                            reusableText('Email'),
                            buildTextField(
                                'Enter your email address', 'user', 'user',
                                (value) {
                              // context
                              //     .read<SignInBloc>()
                              //     .add(PasswordEvent(value));
                            }),
                            SizedBox(height: 10.h),
                            reusableText('Password'),
                            buildTextField(
                                'Enter your password', 'password', 'lock',
                                (value) {
                              // context
                              //     .read<SignInBloc>()
                              //     .add(PasswordEvent(value));
                            }),
                            SizedBox(height: 10.h),
                            reusableText('Confirm password'),
                            buildTextField('Enter your Confirm Password',
                                'password', 'lock', (value) {
                              // context
                              //     .read<SignInBloc>()
                              //     .add(PasswordEvent(value));
                            }),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20.h),
                        child: reusableText(
                            'By creating an account you have to agree with our them & condication.'),
                      ),
                      buildButtonSignIn('Sign Up', 'register', () {}),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
