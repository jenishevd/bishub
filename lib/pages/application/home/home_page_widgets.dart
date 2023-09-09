import 'package:bishub_app/pages/application/home/nestedHome/nestedCafe.dart';
import 'package:bishub_app/pages/application/home/nestedHome/nestedCommunities.dart';
import 'package:bishub_app/pages/application/home/nestedHome/nestedOrganizations.dart';
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

Widget buildSearch() {
  return TextField(
    decoration: InputDecoration(fillColor: Colors.white),
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

Widget moreBtn(BuildContext context, String name) {
  return GestureDetector(
      onTap: () {
        switch (name) {
          case 'cafe':
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const NestedCafe()));
            break;
          case 'organizations':
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const NestedOrganizations()));
            break;
          case 'communities':
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const NestedCommunities()));
            break;
          case 'restaurants':
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const NestedCafe()));
            break;
          case 'bars':
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const NestedCafe()));
            break;
          case 'galleries':
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const NestedCafe()));
            break;
        }
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
