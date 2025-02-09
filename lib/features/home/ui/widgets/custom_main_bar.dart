import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';
import '../../../../core/widgets/app_widget_button.dart';
import '../../../../core/widgets/custom_image_network.dart';

PreferredSizeWidget customMainAppBar({required BuildContext context}) {
  return PreferredSize(
      preferredSize: Size.fromHeight(90.h),
      child: AppBar(
        backgroundColor: ColorsManager.raBlack,
        foregroundColor: ColorsManager.raBlack,
        flexibleSpace: SizedBox(
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      horizontalSpace(20),
                      Image.asset(
                        'assets/images/logo_with_name.png',
                        fit: BoxFit.cover,
                        color: ColorsManager.raWhite,
                        height: 45.h,
                      ),
                    ],
                  )),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      AppWidgetButton(
                        widget: Badge(
                          label: Text(
                            '2',
                            style: TextStyles.font12WhiteBold,
                          ),
                          alignment: Alignment.topRight,
                          largeSize: 10,
                          backgroundColor: ColorsManager.raRed,
                          child: SvgPicture.asset(
                            'assets/svgs/notification.svg',
                            color: ColorsManager.raWhite,
                            fit: BoxFit.cover,
                            height: 20.h,
                          ),
                        ),
                        onPressed: () {},
                        backgroundColor: Colors.transparent,
                        buttonWidth: 40.w,
                        buttonHeight: 40.h,
                      ),
                      horizontalSpace(10),
                      AppWidgetButton(
                        widget: chickImageNetwork(url: 'url'),
                        onPressed: () {},
                        borderRadius: 100,
                        backgroundColor: ColorsManager.raWhite,
                        buttonWidth: 40.w,
                      ),
                      horizontalSpace(10),
                    ],
                  )),
                ],
              ),
              verticalSpace(15),
            ],
          ),
        ),
      ));
}
