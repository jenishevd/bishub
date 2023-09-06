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

Widget mainText(String name) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      name,
      textAlign: TextAlign.start,
      style: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w700,
        fontFamily: 'Roboto',
      ),
    ),
  );
}

Widget moreBtn(BuildContext context) {
  return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('/nestedCafe');
      },
      child: const Text('See more...'));
}

Widget mainCard(String name, String image, String firstText, String secondText,
    [String thirdText = '']) {
  return SizedBox(
    width: 330,
    height: 127,
    child: Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: const BorderRadius.all(Radius.circular(35)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ]),
      child: Row(
        children: [
          Transform.translate(
            offset: const Offset(20, 0),
            child: Image(image: AssetImage(image)),
          ),
          Padding(
            padding: EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(firstText,
                    style: const TextStyle(fontWeight: FontWeight.w600)),
                Text(secondText,
                    style: const TextStyle(fontWeight: FontWeight.w600)),
                Text(thirdText,
                    style: const TextStyle(fontWeight: FontWeight.w600)),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
