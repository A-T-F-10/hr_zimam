import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../logic/cubit/language_cubit.dart';
import '../logic/cubit/language_state.dart';
import 'widgets/buildLanguageOptions.dart';
import 'widgets/custom_change_log_bottons.dart';

class LanguageSelectionPage extends StatelessWidget {
  const LanguageSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageCubit, LanguageState>(builder: (context, state) {
      return Scaffold(
          backgroundColor: ColorsManager.moreLighterGray,
          appBar: customAppBar(title: 'changeLanguage', context: context),
          body: BlocBuilder<LanguageCubit, LanguageState>(
              builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildLanguageOptions(state: state, context: context),
                  buildBottomButtons(state: state, context: context),
                ],
              ),
            );
          }));
    });
  }
}
