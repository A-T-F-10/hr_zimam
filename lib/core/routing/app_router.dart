import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zimam_app_hr/features/home/ui/screens/home_screen.dart';
import 'package:zimam_app_hr/features/home/ui/screens/organizational_structure.dart';
import '../../features/home/ui/screens/attendance_record.dart';
import '../../features/login/cubit/login_cubit.dart';
import '../../features/login/ui/forget_password.dart';
import '../../features/login/ui/login_screen.dart';
import '../../features/splash/ui/splash_screen.dart';
import '../di/dependency_injection.dart';
import 'routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )

    // ignore: unused_local_variable
    final arguments = settings.arguments;

    switch (settings.name) {
      // this is for splash screen page
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );

      // this is for login screen page
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );

      case Routes.forgetPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: ForgetPasswordScreen(),
          ),
        );

      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => HomePageScreen(),
        );

      case Routes.organizationalStructurePage:
        return MaterialPageRoute(
          builder: (_) => OrganizationalStructurePage(),
        );

      case Routes.attendanceRecordPage:
        return MaterialPageRoute(
          builder: (_) => AttendanceRecordPage(),
        );

      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          );
        });
    }
  }
}
