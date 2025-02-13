import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helpers/custom_divider.dart';
import '../helpers/spacing.dart';
import '../theme/colors.dart';
import '../theme/styles.dart';
import 'app_text_button.dart';
import 'custom_image_network.dart';

// ignore: must_be_immutable
class TeamMemberCard extends StatelessWidget {
  TeamMemberCard(
      {Key? key, required this.name, required this.position, required this.num})
      : super(key: key);

  String num;
  String name;
  String position;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              // Profile Image
              Container(
                width: 45.w,
                height: 45.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: ColorsManager.raBrown2,
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: chickImageNetwork(url: '')),
              ),
              horizontalSpace(12),
              // Name and Phone
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      position,
                      style: TextStyles.font12GrayLight,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      num,
                      style: TextStyles.font12GrayLight,
                      textDirection: TextDirection.ltr,
                    ),
                  ],
                ),
              ),
            ],
          ),
          verticalSpace(5),
          CustomDivider(),
          verticalSpace(10),

          // Action Buttons
          Row(
            children: [
              Expanded(
                  child: AppTextButton(
                      buttonText: 'اتصال',
                      buttonHeight: 30,
                      verticalPadding: 0,
                      horizontalPadding: 0,
                      borderSide: BorderSide(width: 0),
                      textStyle: TextStyles.font12BlackRegular,
                      onPressed: () {})),
              const SizedBox(width: 12),
              Expanded(
                child: AppTextButton(
                    buttonText: 'ارسال رسالة',
                    buttonHeight: 30,
                    verticalPadding: 0,
                    horizontalPadding: 0,
                    borderRadius: 2,
                    textStyle: TextStyles.font12BlackRegular,
                    backgroundColor: ColorsManager.raGray.withOpacity(0.5),
                    onPressed: () {}),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
