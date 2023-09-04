import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildApplicationAppBar(String type) {
  return AppBar(
    backgroundColor: Color.fromRGBO(13, 31, 35, 1),
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(0.5),
      child: Container(color: Colors.grey.withOpacity(0.5), height: 0.5),
    ),
    title: Text(
      type,
      style: TextStyle(
          color: Colors.white,
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
          fontFamily: 'Roboto'),
    ),
  );
}
