import 'package:bishub_app/common/routes/routes.dart';
import 'package:bishub_app/global.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  await Global.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [...AppPages.allBlocProviders(context)],
        child: ScreenUtilInit(
          builder: (context, child) => MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                appBarTheme: const AppBarTheme(
              iconTheme: IconThemeData(color: Colors.white),
              elevation: 0,
              backgroundColor: Colors.white,
            )),
            onGenerateRoute: AppPages.generateRouteSettings,
          ),
        ));
  }
}
