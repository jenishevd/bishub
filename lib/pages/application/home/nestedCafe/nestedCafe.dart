import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          child: Column(children: [
            mainCard('Sierra', 'assets/images/sierra.png', 'Свободных столиков',
                'Средний чек: 750 сом', "Киевская 74"),
          ]),
        ),
      );
    });
  }
}
