import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors.dart';

import '../widgets/custom_main_bar.dart';
import '../widgets/home_widgets/custom_card_sats.dart';
import '../widgets/home_widgets/main_custom_buttons.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String getDayName(int dayOfWeek) {
      switch (dayOfWeek) {
        case 1:
          return 'الأحد';
        case 2:
          return 'الاثنين';
        case 3:
          return 'الثلاثاء';
        case 4:
          return 'الأربعاء';
        case 5:
          return 'الخميس';
        default:
          return '';
      }
    }

    List<Map<String, dynamic>> getWeekDays() {
      final today = DateTime.now();

      // Find the most recent Sunday
      // final startDate = today.subtract(Duration(days: currentWeekDay));
      final startDate = today;

      final days = <Map<String, dynamic>>[];

      // Generate 5 days (Sun-Thu)
      for (int i = 0; i < 5; i++) {
        final currentDate = startDate.add(Duration(days: i));
        days.add({
          'dayName': getDayName(i + 1),
          'date': '${currentDate.day}',
          'isSelected': currentDate.day == today.day &&
              currentDate.month == today.month &&
              currentDate.year == today.year,
        });
      }

      return days;
    }

    return Directionality(
      textDirection: TextDirection.rtl, // For Arabic layout
      child: Scaffold(
        appBar: customMainAppBar(context: context),
        backgroundColor: ColorsManager.raLightGray,
        body: Column(
          children: [
            // Top Banner Card
            Container(
              width: double.infinity,
              height: 100.h,
              // padding: const EdgeInsets.all(20),
              margin: EdgeInsets.all(10.h),
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/logo_with_name.png'),
                  fit: BoxFit.contain,
                ),
                color: ColorsManager.raBlack,
                borderRadius: BorderRadius.circular(12),
              ),
            ),

            // Statistics Row
            CustomCardSats(),
            // Weekly Calendar Section
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'الجدول الأسبوعي',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: getWeekDays()
                        .map((day) => _buildDayItem(
                              day['dayName'],
                              day['date'],
                              isSelected: day['isSelected'],
                            ))
                        .toList(),
                  ),
                ],
              ),
            ),

            ButtonsGridMenu(),
          ],
        ),
      ),
    );
  }

  Widget _buildDayItem(String day, String date, {bool isSelected = false}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.h),
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 5.w,
      ),
      decoration: BoxDecoration(
        color: isSelected ? ColorsManager.raBlack : ColorsManager.raWhite,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Text(
            day,
            style: TextStyle(
              fontSize: 12.sp,
              color: isSelected ? Colors.white : Colors.black87,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            date,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.normal,
              color: isSelected ? Colors.white : Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
