import 'package:flutter/material.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../logic/cubit/language_state.dart';
import 'custom_radio_list_tile.dart';

Widget buildLanguageOptions(
    {required LanguageState state, required BuildContext context}) {
  return Container(
    child: Column(
      children: [
        CustomRadioListTile(
          title: "اللغه العربية",
          localeCode: 'ar',
          state: state,
          context: context,
        ),
        verticalSpace(15),
        CustomRadioListTile(
          title: "English",
          localeCode: 'en',
          state: state,
          context: context,
        )
      ],
    ),
  );
}
