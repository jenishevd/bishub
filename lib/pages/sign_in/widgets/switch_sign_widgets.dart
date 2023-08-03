import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildImages(BuildContext context) {
  return const Stack(
    children: [
      Padding(
        padding: EdgeInsets.only(top: 250),
        child: Image(
          image: AssetImage('assets/images/bg-shape.png'),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 250),
        child: Image(
          image: AssetImage('assets/images/walking-png.png'),
          fit: BoxFit.cover,
          width: 210,
          height: 250,
        ),
      ),
    ],
  );
}

Widget buildButtons(BuildContext context, String buttonName) {
  return GestureDetector(
    onTap: () {
      if (buttonName == "Войти") {
        Navigator.of(context).pushNamed('signUp');
      } else {
        Navigator.of(context).pushNamed('logIn');
      }
    },
    child: Container(
      width: 275.w,
      height: 35.h,
      margin: EdgeInsets.only(left: 25.w, right: 25.w, top: 10.h),
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15.w),
          boxShadow: [
            BoxShadow(
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(0, 1),
              color: Colors.grey.withOpacity(0.1),
            )
          ]),
      child: Center(
        child: Text(
          buttonName,
          style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.normal,
              color: Colors.white),
        ),
      ),
    ),
  );
}
