
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(const LanguageInitial(Locale('ar')));

  void changeLanguage(Locale locale, BuildContext context) {
    emit(LanguageChanged(locale)); // Emit the new locale state
  }

  void saveLanguage(Locale locale, BuildContext context) {
    context.setLocale(locale); // EasyLocalization's API
  }

}

