// splash_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gif_view/gif_view.dart';

import '../../../core/helpers/constants.dart';
import '../../../core/routing/routes.dart';
import '../logic/bloc/splash_screen_bloc.dart';
import '../logic/bloc/splash_screen_event.dart';
import '../logic/bloc/splash_screen_state.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashBloc()..add(InitializeApp()),
      child: const _SplashView(),
    );
  }
}

class _SplashView extends StatelessWidget {
  const _SplashView();

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) {
        if (state is SplashLoaded) {
          // Use your isLoggedInUser check here
          Navigator.of(context).pushReplacementNamed(
            isLoggedInUser ? Routes.homeScreen : Routes.loginScreen,
          );
        }
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image:
                      AssetImage('assets/images/splash_background_image.png'),
                  fit: BoxFit.cover)),
          child: Center(
            child: BlocBuilder<SplashBloc, SplashState>(
              builder: (context, state) {
                if (state is SplashLoading) {
                  return GifView.asset('assets/gif/LogoWhite.gif',
                      height: 300.h,
                      width: 300.w,
                      frameRate: 20, // Control frame rate
                      controller: GifController(
                        autoPlay: true,
                        loop: true,
                      ));
                }
                return const SizedBox.shrink();
              },
            ),
          ),
        ),
      ),
    );
  }
}
