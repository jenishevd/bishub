import 'package:bishub_app/pages/sign_in/sign_up/bloc/sign_up_events.dart';
import 'package:bishub_app/pages/sign_in/sign_up/bloc/sign_up_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpBlocs extends Bloc<SignUpEvent, SignUpStates> {
  SignUpBlocs() : super(const SignUpStates()) {
    on<UserNameEvent>(_userNameEvent);
    on<EmailEvent>(_emailEvent);
    on<PasswordEvent>(_passwordEvent);
    on<RePasswordEvent>(_rePasswordEvent);
  }

  void _userNameEvent(UserNameEvent event, Emitter<SignUpStates> emit) {
    print('${event.userName}');
    emit(state.copyWith(userName: event.userName));
  }

  void _emailEvent(EmailEvent event, Emitter<SignUpStates> emit) {
    print('${event.email}');
    emit(state.copyWith(email: event.email));
  }

  void _passwordEvent(PasswordEvent event, Emitter<SignUpStates> emit) {
    print('${event.password}');
    emit(state.copyWith(password: event.password));
  }

  void _rePasswordEvent(RePasswordEvent event, Emitter<SignUpStates> emit) {
    print('${event.rePassword}');
    emit(state.copyWith(rePassword: event.rePassword));
  }
}
