// BLoC
import 'package:flutter_bloc/flutter_bloc.dart';

import 'splash_screen_event.dart';
import 'splash_screen_state.dart';

// Splash BLoC
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitial()) {
    on<InitializeApp>(_onInitializeApp);
  }

  Future<void> _onInitializeApp(
    InitializeApp event,
    Emitter<SplashState> emit,
  ) async {
    try {
      emit(SplashLoading());

      // Add your initialization logic here
      await Future.delayed(const Duration(seconds: 3));

      emit(SplashLoaded());
    } catch (e) {
      emit(SplashError(e.toString()));
    }
  }
}
