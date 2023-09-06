import 'package:flutter/material.dart';
import 'home_page_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(249, 244, 221, 1),
        appBar: buildApplicationAppBar('Home'),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: mainText('Cafe')),
                      Padding(
                        padding: const EdgeInsets.only(left: 170),
                        child: moreBtn(context),
                      ),
                    ]),
                    mainCard(
                        'Sierra',
                        'assets/images/sierra.png',
                        'Свободных столиков',
                        'Средний чек: 750 сом',
                        "Киевская 74"),
                    Align(
                        alignment: Alignment.topLeft,
                        child: mainText('Organizations')),
                    mainCard('Ololo', 'assets/images/ololo.png', 'Культурная',
                        'Dushabinka'),
                    Align(
                        alignment: Alignment.topLeft,
                        child: mainText('Communities')),
                    mainCard('Study Abroad', 'assets/images/engl_school.png',
                        'Образовательный', 'Online'),
                    Align(
                        alignment: Alignment.topLeft,
                        child: mainText('Restaurants')),
                    mainCard('Zerno', 'assets/images/zerno.png',
                        'Свободных столиков', 'Средний чек: 750 сом'),
                    Align(
                        alignment: Alignment.topLeft, child: mainText('Bars')),
                    mainCard('Noname', 'assets/images/noname.png',
                        'Средний чек: 1100 сом', 'Dushabinka'),
                    Align(
                        alignment: Alignment.topLeft,
                        child: mainText('Galleries/Museums')),
                    mainCard('Gapar Aitiev', 'assets/images/gapar.png',
                        'Образовательный', 'Пн-Пт', 'Dushabinka'),
                  ],
                ))
          ],
        )),
      ),
    );
  }
}
