import 'package:bishub_app/app_blocs.dart';
import 'package:bishub_app/pages/sign_in/bloc/sign_in_blocs.dart';
import 'package:bishub_app/pages/sign_in/log_in/log_in.dart';
import 'package:bishub_app/pages/sign_in/sign_up/sign_up.dart';
import 'package:bishub_app/pages/sign_in/switch_sign.dart';
import 'package:bishub_app/pages/welcome/bloc/welcome_blocs.dart';
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
        providers: [
          BlocProvider(create: (context) => WelcomeBloc()),
          BlocProvider(create: (context) => AppBlocs()),
          BlocProvider(create: (context) => SignInBloc())
        ],
        child: ScreenUtilInit(
          builder: (context, child) => MaterialApp(
            debugShowCheckedModeBanner: false,
            home: const Welcome(),
            routes: {
              //"signIn": (context) => const SwitchSign(),
              "logIn": (context) => const logIn(),
              "signUp": (context) => const SignUp(),
            },
          ),
        ));
  }
}