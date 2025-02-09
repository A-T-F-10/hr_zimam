import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/colors.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/app_text_button.dart';

class RegisterNowPart extends StatelessWidget {
  const RegisterNowPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Container(
          // alignment: Alignment.center,
          decoration: BoxDecoration(
              color: ColorsManager.raWhite,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                ),
              ]),
          height: 72.h,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "registerNow",
                        style: TextStyles.font23BlackMedium,
                      ).tr(),
                      Text(
                        "checkingLocation",
                        style: TextStyles.font23BlackLight,
                      ).tr(),
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: AppTextButton(
                        buttonText: "register",
                        buttonWidth: 60,
                        buttonHeight: 34,
                        verticalPadding: 0,
                        horizontalPadding: 0,
                        backgroundColor: ColorsManager.raBrown,
                        textStyle: TextStyles.font12WhiteBold,
                        onPressed: () {
                          print('registration button');
                        }),
                  ),
                  flex: 1)
            ],
          ),
        ));
  }
}
