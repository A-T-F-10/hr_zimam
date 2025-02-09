import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/colors.dart';
import '../../../../../core/theme/styles.dart';

class TaskChecklistPage extends StatelessWidget {
  TaskChecklistPage(
      {Key? key,
      required this.title,
      required this.dateTime,
      required this.isStatus,
      required this.doc,
      required this.location,
      required this.status})
      : super(key: key);

  String title;
  String doc;
  String location;
  String status;
  bool isStatus;
  String dateTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345.w,
      height: 500.h,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.w),
      color: ColorsManager.raWhite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(10),
          Row(
            children: [
              // Header Section
              Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Spacer(),

              // Status Card
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFFFDF6E9),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      status,
                      style: TextStyle(
                          color: Color(0xFF8B5E00),
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),

          verticalSpace(15),

          // Task Description
          Text(
            doc,
            style: TextStyles.font12GrayRegular,
          ),
          verticalSpace(10),

          isStatus
              ? Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      width: 269.w,
                      height: 5.h,
                      child: LinearProgressIndicator(
                        value: 0.7, //// Value between 0.0 and 1.0
                        backgroundColor: Colors.grey[300],
                        borderRadius: BorderRadius.circular(5),
                        valueColor: AlwaysStoppedAnimation<Color>(
                            ColorsManager.raGreenDark),
                      ),
                    ),
                    Spacer(),
                    Text(
                      '70%',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              : Container(),

          Divider(
            indent: 10.w,
            endIndent: 10.w,
            color: ColorsManager.raGray,
          ),

          // Date and Location Section
          Row(
            children: [
              // Date
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 25.h,
                          width: 25.w,
                          decoration: BoxDecoration(
                            color: ColorsManager.raBrown5,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Container(
                            margin: EdgeInsets.all(2),
                            child: SvgPicture.asset(
                              'assets/svgs/calendar.svg',
                            ),
                          ),
                        ),
                        horizontalSpace(5),
                        const Text(
                          'dateOfTask',
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'IBMPlexSansArabic',
                            fontSize: 13,
                          ),
                        ).tr(),
                      ],
                    ),
                    verticalSpace(5),
                    Text(
                      dateTime,
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),

              // Location
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                            height: 25.h,
                            width: 25.w,
                            decoration: BoxDecoration(
                              color: ColorsManager.raBrown5,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Container(
                              margin: EdgeInsets.all(2),
                              child: SvgPicture.asset(
                                'assets/svgs/map.svg',
                              ),
                            )),
                        horizontalSpace(5),
                        const Text(
                          'missionLocation',
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'IBMPlexSansArabic',
                            fontSize: 13,
                          ),
                        ).tr(),
                      ],
                    ),
                    verticalSpace(10),
                    Text(
                      location,
                      style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Colors.grey[800],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          verticalSpace(10),
        ],
      ),
    );
  }
}
