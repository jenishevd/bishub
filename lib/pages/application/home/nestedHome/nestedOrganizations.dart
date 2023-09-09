import 'package:bishub_app/pages/application/home/home_page_widgets.dart';
import 'package:bishub_app/pages/sign_in/common_widgets.dart';
import 'package:flutter/material.dart';

class NestedOrganizations extends StatefulWidget {
  const NestedOrganizations({super.key});

  @override
  State<NestedOrganizations> createState() => _NestedOrganizationsState();
}

class _NestedOrganizationsState extends State<NestedOrganizations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 244, 221, 1),
      appBar: buildApplicationAppBar('Organizations'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
          child: Column(
            children: [
              const SizedBox(height: 3),
              mainCard(
                'Study Abroad',
                'assets/images/engl_school.png',
                'Образовательный',
                'Online',
              ),
              const SizedBox(height: 15),
              mainCard(
                'Ilgeri',
                'assets/images/ilgeri.png',
                'Культурная',
                'Online',
                "Пн-Пт 9.00-17.00",
              ),
              const SizedBox(height: 15),
              mainCard(
                'DevKit',
                'assets/images/devkit.png',
                'Бизнес-акселератор',
                'Ололо Ормонхан',
                "Пн-Пт 9.00-17.00",
              ),
              const SizedBox(height: 15),
              mainCard(
                'Kyrgyz Space',
                'assets/images/kspace.png',
                'Technology&Engineering',
                'Онлайн',
                "Пн-Пт 9.00-17.00",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
