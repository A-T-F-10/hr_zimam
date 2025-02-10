import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/di/dependency_injection.dart';
import 'core/helpers/extensions.dart';

import 'core/helpers/constants.dart';
import 'core/helpers/shared_pref_helper.dart';

import 'core/routing/app_router.dart';
import 'zimam_main.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  setupGetIt();
  // To fix texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();

  await checkIfLoggedInUser();
  runApp(
    EasyLocalization(
      path: 'assets/translations',
      // fallbackLocale: const Locale('ar'),
      useOnlyLangCode: true,
      // startLocale: const Locale('ar'),
      useFallbackTranslations: true,
      saveLocale: true,
      supportedLocales: const [Locale('en'), Locale('ar')],
      child: MyApp(
        appRouter: AppRouter(),
      ),
    ),
  );
}

checkIfLoggedInUser() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
