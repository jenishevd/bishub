import 'package:bishub_app/common/routes/names.dart';
import 'package:bishub_app/global.dart';
import 'package:bishub_app/pages/application/application_page.dart';
import 'package:bishub_app/pages/application/bloc/app_blocs.dart';
import 'package:bishub_app/pages/application/home/nestedHome/nestedCafe.dart';
import 'package:bishub_app/pages/sign_in/bloc/sign_in_blocs.dart';
import 'package:bishub_app/pages/sign_in/log_in/log_in.dart';
import 'package:bishub_app/pages/sign_in/sign_up/bloc/sign_up_blocs.dart';
import 'package:bishub_app/pages/sign_in/sign_up/sign_up.dart';
import 'package:bishub_app/pages/welcome/bloc/welcome_blocs.dart';
import 'package:bishub_app/pages/welcome/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppPages {
  static List<PageEntity> routes() {
    return [
      PageEntity(
          route: AppRoutes.INITIAL,
          page: const Welcome(),
          bloc: BlocProvider(
            create: (_) => WelcomeBloc(),
          )),
      PageEntity(
          route: AppRoutes.SIGN_IN,
          page: const logIn(),
          bloc: BlocProvider(
            create: (_) => SignInBloc(),
          )),
      PageEntity(
          route: AppRoutes.REGISTER,
          page: const SignUp(),
          bloc: BlocProvider(
            create: (_) => SignUpBlocs(),
          )),
      PageEntity(
          route: AppRoutes.APPLICATION,
          page: const ApplicationPage(),
          bloc: BlocProvider(
            create: (_) => AppBlocs(),
          )),
      PageEntity(
          route: AppRoutes.APPLICATION,
          page: const NestedCafe(),
          bloc: BlocProvider(
            create: (_) => AppBlocs(),
          )),
    ];
  }

  // return all bloc providers
  static List<dynamic> allBlocProviders(BuildContext context) {
    List<BlocProvider> blocProviders = <BlocProvider>[];
    for (var bloc in routes()) {
      blocProviders.add(bloc.bloc);
    }
    return blocProviders;
  }

  // a model that covers entire screen as we click on navigator object
  static MaterialPageRoute generateRouteSettings(RouteSettings settings) {
    if (settings.name != null) {
      //check for route name matching when Navigator gets trigger
      var result = routes().where((element) => element.route == settings.name);
      if (result.isNotEmpty) {
        bool deviceFirstOpen = Global.storageService.getDeviceFirstOpen();
        if (result.first.route == AppRoutes.INITIAL && deviceFirstOpen) {
          bool isLoggedIn = Global.storageService.getIsLoggedIn();
          if (isLoggedIn) {
            return MaterialPageRoute(
                builder: (_) => const ApplicationPage(), settings: settings);
          }
          return MaterialPageRoute(
              builder: (_) => const logIn(), settings: settings);
        }
        return MaterialPageRoute(
            builder: (_) => result.first.page, settings: settings);
      }
    }
    return MaterialPageRoute(builder: (_) => const logIn(), settings: settings);
  }
}

//unify BlocProvider and routes and pages
class PageEntity {
  String route;
  Widget page;
  dynamic bloc;

  PageEntity({required this.route, required this.page, this.bloc});
}
