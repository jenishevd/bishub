import 'package:bishub_app/pages/application/application_widgets.dart';
import 'package:bishub_app/pages/application/bloc/app_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../bloc/app_blocs.dart';
import '../../bloc/app_states.dart';
import '../home_page_widgets.dart';

class NestedCafe extends StatefulWidget {
  const NestedCafe({super.key});

  @override
  State<NestedCafe> createState() => _NestedCafeState();
}

class _NestedCafeState extends State<NestedCafe> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBlocs, AppState>(builder: (context, state) {
      return Scaffold(
        backgroundColor: const Color.fromRGBO(249, 244, 221, 1),
        appBar: buildApplicationAppBar('Cafe'),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
            child: Column(
              children: [
                const SizedBox(height: 3),
                mainCard(
                  'Sierra',
                  'assets/images/sierra.png',
                  'Свободных столиков',
                  'Средний чек: 750 сом',
                  "Киевская 74",
                ),
                const SizedBox(height: 15),
                mainCard(
                  "Ant's",
                  'assets/images/ants.png',
                  'Свободных столиков',
                  'Средний чек: 900 сом',
                  "Novotel",
                ),
                const SizedBox(height: 15),
                mainCard(
                  'Bellagio',
                  'assets/images/bellagio.png',
                  'Свободных столиков',
                  'Средний чек: 500 сом',
                  "Манас 5",
                ),
                const SizedBox(height: 15),
                mainCard(
                    'Adriano',
                    'assets/images/adriano.png',
                    'Свободных столиков',
                    'Средний чек: 500 сом',
                    "Юнусалиева 10"),
              ],
            ),
          ),
        ),
      );
    });
  }
}
