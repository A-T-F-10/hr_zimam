import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theme/colors.dart';
import '../../logic/cubit/language_cubit.dart';
import '../../logic/cubit/language_state.dart';

// ignore: non_constant_identifier_names
Widget CustomRadioListTile({
  required String title,
  required String localeCode,
  required LanguageState state,
  required BuildContext context,
}) {
  // ignore: unused_local_variable
  Locale? selectLocale;

  return RadioListTile<Locale>(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
    ),
    activeColor: ColorsManager.raBrown, // Color for the active radio button
    splashRadius: 5,
    hoverColor: ColorsManager.raBrown, // Hover effect color
    tileColor: context.locale.languageCode.isEmpty
        ? state.locale.languageCode != localeCode
            ? ColorsManager.raWhite
            : ColorsManager.raBrown5
        : context.locale.languageCode != localeCode
            ? ColorsManager.raWhite
            : ColorsManager.raBrown5, // Background color for the tile
    selectedTileColor: ColorsManager.raBrown, // Background color when selected
    title: Text(
      title,
      style: TextStyle(fontSize: 18),
    ),
    value: Locale(localeCode),
    groupValue: state.locale,
    onChanged: (value) {
      context
          .read<LanguageCubit>()
          .changeLanguage(value ?? Locale(localeCode), context);
    },
  );
}
