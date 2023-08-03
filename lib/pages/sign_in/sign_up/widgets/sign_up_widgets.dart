import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget firstText(BuildContext context) {
  return const Text(
    'Register',
    maxLines: 2,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
        fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black),
  );
}

Widget buildSwitch(BuildContext context, String name) {
  return GestureDetector(
    onTap: () {
      print('smth');
    },
    child: Container(
      width: 80,
      height: 30,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(118, 112, 111, 1),
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
        name,
        style: const TextStyle(fontSize: 13),
      )),
    ),
  );
}

Widget buildTextField(String hintText, String textType, String iconName,
    void Function(String value)? func) {
  return Container(
    width: 325.w,
    height: 50.h,
    margin: EdgeInsets.only(bottom: 10.h),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(15.w)),
      border: Border.all(color: Colors.black),
    ),
    child: Row(
      children: [
        Container(
          width: 16.w,
          margin: EdgeInsets.only(left: 17.w),
          height: 16.h,
          child: Image.asset('assets/icons/$iconName.png'),
        ),
        SizedBox(
          width: 270.w,
          height: 50.h,
          child: TextField(
            onChanged: (value) => func!(value),
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
                hintText: hintText,
                border: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent)),
                disabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent)),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent))),
            style: TextStyle(
                color: Colors.black,
                fontFamily: "Avenir",
                fontWeight: FontWeight.normal,
                fontSize: 14.sp),
            autocorrect: false,
            obscureText: textType == "password" ? true : false,
          ),
        ),
      ],
    ),
  );
}

Widget buildButtonSignIn(BuildContext context) {
  return GestureDetector(
    onTap: () {
      print('d');
    },
    child: Container(
      margin: EdgeInsets.only(top: 10, left: 25.w, right: 25.w),
      width: 300.w,
      height: 40.h,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(15.w)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 20,
              offset: const Offset(0, 1),
            )
          ]),
      child: Center(
        child: Text(
          "NEXT",
          style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.normal),
        ),
      ),
    ),
  );
}
