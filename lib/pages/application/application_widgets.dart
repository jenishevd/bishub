import 'package:flutter/cupertino.dart';

Widget buildPage(int index) {
  List<Widget> _widget = const [
    Center(child: Text('Home')),
    Center(child: Text('Popular')),
    Center(child: Text('Events')),
    Center(child: Text('Meets')),
    Center(child: Text('Profile'))
  ];
  return _widget[index];
}
