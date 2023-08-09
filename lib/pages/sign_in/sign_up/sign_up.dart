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
    return Material(
      child: Container(
        color: Colors.white,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 110, left: 50),
                child: firstText(context),
              ),
              const SizedBox(height: 50),
              Row(children: [
                buildSwitch(context, 'email'),
                buildSwitch(context, 'Phone number')
              ]),
              Container(
                margin: EdgeInsets.only(top: 66.h),
                padding: EdgeInsets.only(left: 25.w, right: 25.w),
                child: Column(
                  children: [
                    buildTextField('Enter your email address', 'email', 'user',
                        (value) {
                      context.read<SignInBloc>().add(EmailEvent(value));
                    }),
                    SizedBox(height: 10.h),
                    buildTextField('Enter your password', 'password', 'lock',
                        (value) {
                      context.read<SignInBloc>().add(PasswordEvent(value));
                    })
                  ],
                ),
              ),
              buildButtonSignIn('Register', 'Sign Up', () {}),
            ],
          ),
        ),
      ),
    );
  }
}
