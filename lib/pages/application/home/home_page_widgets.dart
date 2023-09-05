import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildApplicationAppBar(String type) {
  return AppBar(
    centerTitle: false,
    backgroundColor: const Color.fromRGBO(13, 31, 35, 1),
    titleSpacing: 45,
    title: Text(
      type,
      textAlign: TextAlign.start,
      style: TextStyle(
        color: Colors.white,
        fontSize: 18.sp,
        fontWeight: FontWeight.w800,
        fontFamily: 'Roboto',
      ),
    ),
  );
}
