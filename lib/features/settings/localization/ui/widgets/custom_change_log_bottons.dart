import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../../../../core/helpers/extensions.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/colors.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/app_text_button.dart';
import '../../logic/cubit/language_cubit.dart';
import '../../logic/cubit/language_state.dart';

Widget buildBottomButtons(
    {required LanguageState state, required BuildContext context}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      // to go back and cancel the page
      Expanded(
        flex: 1,
        child: AppTextButton(
          buttonText: 'cancel',
          textStyle: TextStyles.font13BlackBold,
          onPressed: () => Navigation(context).pop(),
          buttonWidth: 20,
        ),
      ),

      horizontalSpace(20),

      Expanded(
        flex: 1,
        child: AppTextButton(
          buttonText: 'change',
          backgroundColor: ColorsManager.raBrown,
          textStyle: TextStyles.font13WhiteBold,
          onPressed: () {
            // Save the selected language or navigate
            final selectedLanguage = context.read<LanguageCubit>().state;
            context
                .read<LanguageCubit>()
                .saveLanguage(selectedLanguage.locale, context);

            // to reBuild app or page
            showDialog(
                context: context,
                builder: (context) => LoadingAnimationWidget.inkDrop(
                      color: ColorsManager.raBrown,
                      size: 30.h,
                    ));
          },
          buttonWidth: 20,
        ),
      ),
    ],
  );
}
