import 'package:bishub_app/common/routes/pages.dart';
import 'package:bishub_app/pages/application/application_page.dart';
import 'package:bishub_app/pages/sign_in/log_in/log_in.dart';
import 'package:bishub_app/pages/sign_in/sign_up/sign_up.dart';
import 'package:bishub_app/pages/welcome/welcome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
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
              iconTheme: IconThemeData(color: Colors.black),
              elevation: 0,
              backgroundColor: Colors.white,
            )),
            //home: const Welcome(),
            onGenerateRoute: AppPages.GenerateRouteSettings,
            // routes: {
            //   //"signIn": (context) => const SwitchSign(),
            //   "logIn": (context) => const logIn(),
            //   "signUp": (context) => const SignUp(),
            // },
          ),
        ));
  }
}
