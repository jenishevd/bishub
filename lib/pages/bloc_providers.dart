import 'package:bishub_app/pages/sign_in/bloc/sign_in_blocs.dart';
import 'package:bishub_app/pages/sign_in/sign_up/bloc/sign_up_blocs.dart';
import 'package:bishub_app/pages/welcome/bloc/welcome_blocs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocProviders {
  static get AllBlocProviders => [
        BlocProvider(lazy: false, create: (context) => WelcomeBloc()),
        //BlocProvider(lazy: false, create: (context) => AppBlocs()),
        BlocProvider(create: (context) => SignInBloc()),
        BlocProvider(create: (context) => SignUpBlocs()),
      ];
}
