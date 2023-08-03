import 'package:bishub_app/pages/sign_in/widgets/switch_sign_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SwitchSign extends StatefulWidget {
  const SwitchSign({super.key});

  @override
  State<SwitchSign> createState() => _SwitchSignState();
}

class _SwitchSignState extends State<SwitchSign> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: SafeArea(
          child: Column(children: [
            buildImages(context),
            SizedBox(height: 50.h),
            buildButtons(context, "Войти"),
            buildButtons(context, "Зарегрестрироваться"),
          ]),
        ),
      ),
    );
  }
}
