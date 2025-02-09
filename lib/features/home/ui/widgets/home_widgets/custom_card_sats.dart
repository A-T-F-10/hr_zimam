import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/colors.dart';
import '../../../../../core/theme/styles.dart';

class CustomCardSats extends StatelessWidget {
  const CustomCardSats({super.key});

  @override
  Widget build(BuildContext context) {
    return // Statistics Row
        Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildStatItem('رصيد الإجازات', '15', TextStyles.font24RedBlod),
          _buildStatItem('عدد الغياب', '2', TextStyles.font24GreenBlod),
          _buildStatItem('الطلبات', '4', TextStyles.font24BlueBold),
        ],
      ),
    );
  }
}

Widget _buildStatItem(String label, String value, textStyles) {
  return Container(
      width: 100.w,
      height: 70.h,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: ColorsManager.raWhite,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            value,
            style: textStyles,
          ),
          // verticalSpace(5),
          Text(
            label,
            style: TextStyle(
              fontSize: 12.sp,
              color: ColorsManager.raBlack,
            ),
          ),
        ],
      ));
}
