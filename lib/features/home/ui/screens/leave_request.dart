import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zimam_app_hr/core/helpers/custom_divider.dart';
import 'package:zimam_app_hr/core/helpers/extensions.dart';
import 'package:zimam_app_hr/core/helpers/spacing.dart';
import 'package:zimam_app_hr/core/theme/colors.dart';
import 'package:zimam_app_hr/features/home/ui/screens/salaries.dart';

import '../../../../core/theme/styles.dart';
import '../../../../core/widgets/custom_app_bar.dart';

class LeaveRequestForm extends StatefulWidget {
  const LeaveRequestForm({super.key});

  @override
  State<LeaveRequestForm> createState() => _LeaveRequestFormState();
}

class _LeaveRequestFormState extends State<LeaveRequestForm> {
  String selectedLeaveType = 'occasion';
  final startDate = DateTime.now();
  final endDate = DateTime.now();

  final leaveTypes = [
    {'id': 'sick', 'label': 'مرضية', 'days': '10 ايام'},
    {'id': 'occasion', 'label': 'مناسبة', 'days': '10 ايام'},
    {'id': 'review', 'label': 'مراجعات', 'days': '2 ايام'},
    {'id': 'marriage', 'label': 'زواج', 'days': '4 ايام'},
    {'id': 'maternity', 'label': 'وضع', 'days': '2 ايام'},
    {'id': 'annual', 'label': 'سنوية', 'days': '21 ايام'},
  ];
  String? days;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: ColorsManager.raWhite,
        appBar: customAppBar(
          context: context,
          title: 'طلب إجازة',
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Container(
                height: 180.h,
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                decoration: BoxDecoration(
                    color: ColorsManager.raLightGray2,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 10.h),
                      child: Text(
                        'نوع الإجازة',
                        style: TextStyle(
                            fontSize: 16, color: ColorsManager.raBlack),
                      ),
                    ),
                    CustomDivider(),
                    verticalSpace(5),
                    GridView.count(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: 3,
                      mainAxisSpacing: 6,
                      crossAxisSpacing: 15,
                      childAspectRatio: 3,
                      children: leaveTypes.map((type) {
                        final isSelected = type['id'] == selectedLeaveType;
                        return ElevatedButton(
                          onPressed: () {
                            setState(() {
                              days = type['days'];
                              selectedLeaveType = type['id']!;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            backgroundColor: isSelected
                                ? ColorsManager.raBlack
                                : Colors.white,
                            foregroundColor:
                                isSelected ? Colors.white : Colors.black,
                          ),
                          child: Text(
                            type['label']!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),

              verticalSpace(10),
              Container(
                height: 100.h,
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                decoration: BoxDecoration(
                    color: ColorsManager.raLightGray2,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.w, vertical: 7.h),
                      child: Text(
                        'عدد الايام',
                        style: TextStyle(
                            fontSize: 16, color: ColorsManager.raBlack),
                      ),
                    ),
                    CustomDivider(),
                    Container(
                      width: double.infinity,
                      height: 35.h,
                      decoration: BoxDecoration(
                          color: ColorsManager.raWhite,
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        children: [
                          horizontalSpace(10),
                          Text(
                            days ?? '5 الايام',
                            style: TextStyle(
                                fontSize: 16, color: ColorsManager.raBlack),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

              verticalSpace(20),

              Container(
                height: 100.h,
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                decoration: BoxDecoration(
                    color: ColorsManager.raLightGray2,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.w, vertical: 7.h),
                      child: Text(
                        'تاريخ من',
                        style: TextStyle(
                            fontSize: 16, color: ColorsManager.raBlack),
                      ),
                    ),
                    CustomDivider(),
                    Container(
                      width: double.infinity,
                      height: 35.h,
                      decoration: BoxDecoration(
                          color: ColorsManager.raWhite,
                          border: Border.all(color: ColorsManager.raDarkGray5),
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        children: [
                          horizontalSpace(10),
                          Text(
                            '2025-01-01',
                            style: TextStyle(
                                fontSize: 16, color: ColorsManager.raBlack),
                          ),
                          Spacer(),
                          Icon(
                            Icons.calendar_today,
                            size: 15.h,
                          ),
                          horizontalSpace(10),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              verticalSpace(20),

              Container(
                height: 100.h,
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                decoration: BoxDecoration(
                    color: ColorsManager.raLightGray2,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.w, vertical: 7.h),
                      child: Text(
                        'تاريخ الى',
                        style: TextStyle(
                            fontSize: 16, color: ColorsManager.raBlack),
                      ),
                    ),
                    CustomDivider(),
                    GestureDetector(
                      onTap: () {
                        print('object');
                      },
                      child: Container(
                        width: double.infinity,
                        height: 35.h,
                        decoration: BoxDecoration(
                            color: ColorsManager.raWhite,
                            border:
                                Border.all(color: ColorsManager.raDarkGray5),
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          children: [
                            horizontalSpace(10),
                            Text(
                              '2025-01-01',
                              style: TextStyle(
                                  fontSize: 16, color: ColorsManager.raBlack),
                            ),
                            Spacer(),
                            Icon(
                              Icons.calendar_today,
                              size: 15.h,
                            ),
                            horizontalSpace(10),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),

              verticalSpace(20),

              Container(
                height: 150.h,
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                decoration: BoxDecoration(
                    color: ColorsManager.raLightGray2,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.w, vertical: 7.h),
                      child: Text(
                        'تفاصيل الطلب',
                        style: TextStyle(
                            fontSize: 16, color: ColorsManager.raBlack),
                      ),
                    ),
                    CustomDivider(),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5.w),
                      width: double.infinity,
                      height: 90.h,
                      decoration: BoxDecoration(
                          color: ColorsManager.raWhite,
                          border: Border.all(color: ColorsManager.raDarkGray5),
                          borderRadius: BorderRadius.circular(5)),
                    )
                  ],
                ),
              ),

              verticalSpace(20),

              Container(
                height: 100.h,
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                decoration: BoxDecoration(
                    color: ColorsManager.raLightGray2,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.w, vertical: 7.h),
                      child: Text(
                        'المرفقات',
                        style: TextStyle(
                            fontSize: 16, color: ColorsManager.raBlack),
                      ),
                    ),
                    CustomDivider(),
                    Container(
                      width: double.infinity,
                      height: 35.h,
                      decoration: BoxDecoration(
                          color: ColorsManager.raWhite,
                          border: Border.all(color: ColorsManager.raDarkGray5),
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        children: [
                          horizontalSpace(10),
                          Text(
                            '.................',
                            style: TextStyle(
                                fontSize: 16, color: ColorsManager.raBlack),
                          ),
                          Spacer(),
                          Icon(Icons.file_upload_outlined),
                          horizontalSpace(10),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              verticalSpace(20),
              Container(
                width: double.infinity,
                height: 40.h,
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('إرسال'),
                ),
              ),

              // Main Form
            ],
          ),
        ),
      ),
    );
  }
}
