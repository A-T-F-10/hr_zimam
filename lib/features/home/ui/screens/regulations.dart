import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zimam_app_hr/core/helpers/extensions.dart';
import 'package:zimam_app_hr/core/helpers/spacing.dart';
import 'package:zimam_app_hr/features/home/ui/widgets/home_widgets/custom_card_sats.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';

class RegulationsScreen extends StatelessWidget {
  const RegulationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: ColorsManager.raLightGray,
        appBar: AppBar(
          toolbarHeight: 70.h,
          leading: Container(
            alignment: Alignment.topCenter,
            height: 10.h,
            margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 15.h),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: IconButton(
              alignment: Alignment.topCenter,
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                context.pop();
              },
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.black,
          title: Text(
            'سجل الحضور والانصراف',
            style: TextStyles.font16WhiteSemiBold,
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            verticalSpace(10),
            CustomCardSats(),

            // Attendance List
            Expanded(
              child: Container(
                // margin: const EdgeInsets.only(top: 24),
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                decoration: const BoxDecoration(
                    // color: Colors.white,
                    ),
                child: ListView(
                  children: [
                    _buildAttendanceDay('12', 'يناير', '09:00', true, false),
                    _buildAttendanceDay('13', 'يناير', '09:00', true, true),
                    _buildAttendanceDay('14', 'يناير', '09:00', true, true,
                        isHighlighted: true),
                    _buildAttendanceDay('16', 'فبراير', '09:00', true, true),
                    _buildAttendanceDay('17', 'فبراير', '09:00', true, true),
                    _buildAttendanceDay('18', 'فبراير', '09:00', true, true),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatCard(String title, String value, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            value,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildAttendanceDay(
    String day, String month, String time, bool checkIn, bool checkOut,
    {bool isHighlighted = false}) {
  return Container(
    margin: const EdgeInsets.only(bottom: 8),
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      // border: Border.all(color: Colors.grey[200]!),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 60.h,
          width: 50.w,
          decoration: BoxDecoration(
            color: ColorsManager.lighterGray,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                day,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(month),
            ],
          ),
        ),
        horizontalSpace(15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(' تم الحضور', style: TextStyle(color: Colors.green)),
                horizontalSpace(10),
                const Text(' الساعة'),
                horizontalSpace(5),
                Text(time),
              ],
            ),
            verticalSpace(10),
            if (checkOut)
              Row(
                children: [
                  const Text('تم الإنصراف',
                      style: TextStyle(color: Colors.green)),
                  horizontalSpace(10),
                  const Text(' الساعة'),
                  horizontalSpace(5),
                  Text(time),
                ],
              ),
          ],
        ),
      ],
    ),
  );
}

Widget _buildAbsentDay(String day, String month) {
  return Container(
    margin: const EdgeInsets.only(bottom: 8),
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.red[50],
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Colors.grey[200]!),
    ),
    child: Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Text(
            'غائب',
            style: TextStyle(color: Colors.white),
          ),
        ),
        const Spacer(),
        Column(
          children: [
            Text(
              day,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(month),
          ],
        ),
      ],
    ),
  );
}
