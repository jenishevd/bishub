import 'package:flutter/material.dart';

import '../home/home_page_widgets.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({super.key});

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 244, 221, 1),
      appBar: buildApplicationAppBar('Events'),
    );
  }
}
