import 'package:bishub_app/pages/application/home/home_page_widgets.dart';
import 'package:flutter/material.dart';

class NestedCommunities extends StatefulWidget {
  const NestedCommunities({super.key});

  @override
  State<NestedCommunities> createState() => _NestedCommunitiesState();
}

class _NestedCommunitiesState extends State<NestedCommunities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 244, 221, 1),
      appBar: buildApplicationAppBar('Communities'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
          child: Column(
            children: [
              const SizedBox(height: 3),
              mainCard(
                'Ololo',
                'assets/images/ololo.png',
                'Сообщество хабов',
                'Культурная',
                'Dushabinka',
              ),
              const SizedBox(height: 15),
              mainCard(
                'UI/UX',
                'assets/images/ux.png',
                'Программирование',
                'Online',
              ),
              const SizedBox(height: 15),
              mainCard(
                'Startupers',
                'assets/images/startup.png',
                'Бизнес',
                'Онлайн',
              ),
              const SizedBox(height: 15),
              mainCard(
                'Medicine',
                'assets/images/medicine.png',
                'Научная',
                'Байтик-Баатыр 24',
                'Пн-Сб 19.00-2.00',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
