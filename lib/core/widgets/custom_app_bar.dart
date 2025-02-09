import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helpers/extensions.dart';
import '../helpers/spacing.dart';
import '../theme/colors.dart';
import '../theme/styles.dart';
import 'app_widget_button.dart';

PreferredSizeWidget customAppBar(
    {required String title, required BuildContext context}) {
  return PreferredSize(
      preferredSize: Size.fromHeight(100.h),
      child: Container(
          child: AppBar(
        backgroundColor: ColorsManager.raBrown,
        foregroundColor: ColorsManager.raBrown,
        flexibleSpace: Container(
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background_image.png'),
                fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  horizontalSpace(20),
                  AppWidgetButton(
                    widget: Icon(
                      Icons.arrow_back,
                      color: ColorsManager.raBrown,
                    ),
                    onPressed: () {
                      Navigation(context).pop();
                    },
                    backgroundColor: ColorsManager.raWhite,
                    buttonWidth: 40.w,
                  ),
                  horizontalSpace(15),
                  Text(
                    title,
                    style: TextStyles.font16WhiteSemiBold,
                  ).tr()
                ],
              ),
              verticalSpace(15),
            ],
          ),
        ),
      )));
}
