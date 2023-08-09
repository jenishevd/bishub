import 'package:bishub_app/pages/sign_in/log_in/widgets/log_in_widgets.dart';
import 'package:bishub_app/pages/sign_in/sign_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../bloc/sign_in_blocs.dart';
import '../bloc/sign_in_events.dart';
import '../bloc/sign_in_states.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(builder: (context, state) {
      return Material(
        child: Container(
          color: Colors.white,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 110, left: 50),
                  child: firstTextLog(context),
                ),
                const SizedBox(height: 50),
                Row(children: [
                  buildSwitchLog(context, 'email'),
                  buildSwitchLog(context, 'Phone number')
                ]),
                Container(
                  margin: EdgeInsets.only(top: 66.h),
                  padding: EdgeInsets.only(left: 25.w, right: 25.w),
                  child: Column(
                    children: [
                      buildTextFieldLog(
                          'Enter your email address', 'email', 'user', (value) {
                        context.read<SignInBloc>().add(EmailEvent(value));
                      }),
                      SizedBox(height: 10.h),
                      buildTextFieldLog(
                          'Enter your password', 'password', 'lock', (value) {
                        context.read<SignInBloc>().add(PasswordEvent(value));
                      })
                    ],
                  ),
                ),
                buildButtonSignInLog(context, () {
                  SignInController(context: context).handleSignIn('email');
                }),
              ],
            ),
          ),
        ),
      );
    });
  }
}
