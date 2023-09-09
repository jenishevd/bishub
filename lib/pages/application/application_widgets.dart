import 'package:bishub_app/pages/application/events/events_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home/home_page.dart';

Widget buildPage(int index) {
  List<Widget> _widget = const [
    HomePage(),
    Center(child: Text('Popular')),
    EventsPage(),
    Center(child: Text('Meets')),
    Center(child: Text('Profile'))
  ];
  return _widget[index];
}

var bottomTabs = const [
  BottomNavigationBarItem(
    label: 'Home',
    icon: Icon(Icons.home),
  ),
  BottomNavigationBarItem(
    label: 'Popular',
    icon: Icon(Icons.favorite),
  ),
  BottomNavigationBarItem(
    label: 'Events',
    icon: Icon(Icons.calendar_month),
  ),
  BottomNavigationBarItem(
    label: 'Meets',
    icon: Icon(Icons.meeting_room),
  ),
  BottomNavigationBarItem(
    label: 'Profile',
    icon: Icon(Icons.portrait),
  )
];
