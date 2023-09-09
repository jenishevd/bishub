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
                    buildSearch(),
                    Row(children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: mainText('Cafe')),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: moreBtn(context, 'cafe'),
                      ),
                    ]),
                    mainCard(
                        'Sierra',
                        'assets/images/sierra.png',
                        'Свободных столиков',
                        'Средний чек: 750 сом',
                        "Киевская 74"),
                    Row(children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: mainText('Organizations')),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: moreBtn(context, 'organizations'),
                      )
                    ]),
                    mainCard('Ololo', 'assets/images/ololo.png', 'Культурная',
                        'Dushabinka'),
                    Row(
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: mainText('Communities')),
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: moreBtn(context, 'communities'),
                        )
                      ],
                    ),
                    mainCard('Study Abroad', 'assets/images/engl_school.png',
                        'Образовательный', 'Online'),
                    Row(
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: mainText('Restaurants')),
                        Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: moreBtn(context, 'restaurants'))
                      ],
                    ),
                    mainCard('Zerno', 'assets/images/zerno.png',
                        'Свободных столиков', 'Средний чек: 750 сом'),
                    Row(
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: mainText('Bars')),
                        Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: moreBtn(context, 'bars'))
                      ],
                    ),
                    mainCard('Noname', 'assets/images/noname.png',
                        'Средний чек: 1100 сом', 'Dushabinka'),
                    Row(
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: mainText('Galleries/Museums')),
                        Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: moreBtn(context, 'galleries'))
                      ],
                    ),
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
