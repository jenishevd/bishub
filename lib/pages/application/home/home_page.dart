import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20),
                  child: Text(
                    'Cafe',
                    style: TextStyle(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Roboto',
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                width: 330,
                height: 110,
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
                        child: const Image(
                            image: AssetImage('assets/images/sierra.png')),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sierra',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              'Свободных столиков',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            Text('Средний чек: 750 сом',
                                style: TextStyle(fontWeight: FontWeight.w600)),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
