import 'package:bishub_app/pages/sign_in/log_in/widgets/log_in_widgets.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
          child: Column(
        children: [buildUpper(context)],
      )),
    );
  }
}
