import 'package:bishub_app/app_events.dart';
import 'package:bishub_app/app_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocs extends Bloc<AppEvent, AppStates> {
  AppBlocs() : super(InitStates());
}
