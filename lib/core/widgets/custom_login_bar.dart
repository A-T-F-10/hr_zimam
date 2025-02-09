import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/spacing.dart';

import '../../../../core/theme/colors.dart';

PreferredSizeWidget customLoginBar({required BuildContext context}) {
  return PreferredSize(
      preferredSize: Size.fromHeight(200.h),
      child: AppBar(
        backgroundColor: ColorsManager.raBlack,
        foregroundColor: ColorsManager.raBlack,
        flexibleSpace: Container(
          alignment: Alignment.center,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              verticalSpace(20),
              Image.asset(
                'assets/images/logo_with_name.png',
                height: 100.h,
              ),
            ],
          ),
        ),
      ));
}
