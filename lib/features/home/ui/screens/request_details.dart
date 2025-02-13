import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zimam_app_hr/core/helpers/extensions.dart';

import '../../../../core/helpers/custom_divider.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';

class RequestDetails extends StatelessWidget {
  const RequestDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
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
            'طلب اجازة مرضية ',
            style: TextStyles.font16WhiteSemiBold,
          ),
          centerTitle: true,
        ),
        backgroundColor: ColorsManager.lighterGray,
        body: ListView(
          children: [
            verticalSpace(10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: Container(
                height: 480.h,
                // padding: EdgeInsets.symmetric(horizontal: 30.w),
                decoration: BoxDecoration(
                    color: ColorsManager.raWhite,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.w, vertical: 7.h),
                      child: Text(
                        'طلب اجازة مرضية',
                        style: TextStyle(
                            fontSize: 16, color: ColorsManager.raBlack),
                      ),
                    ),
                    CustomDivider(),
                    _DetailItem(
                      icon: Icons.category,
                      label: 'نوع الطلب',
                      value: 'اجازة زواج',
                    ),
                    _DetailItem(
                      icon: Icons.calendar_today,
                      label: 'عدد الايام',
                      value: '5 ايام',
                    ),
                    _DetailItem(
                      icon: Icons.date_range,
                      label: 'تاريخ بداية الاجازة',
                      value: '2025-01-01',
                    ),
                    _DetailItem(
                      icon: Icons.date_range,
                      label: 'تاريخ نهاية الاجازة',
                      value: '2025-02-01',
                    ),

                    // Attachments
                    _DetailItem(
                      icon: Icons.attach_file,
                      label: 'المرفقات',
                      value: '',
                      child: Row(
                        children: [
                          Text(
                            'L5RWXyBz9LEdjpOaO5w.pdf',
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 12.sp),
                          ),
                        ],
                      ),
                    ),

                    // Request Status
                    _DetailItem(
                      icon: Icons.check_circle,
                      label: 'حالة الطلب',
                      value: '',
                      child: Text(
                        'تم القبول',
                        style: TextStyle(
                          color: Colors.green[600],
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 1.h),
              child: Container(
                height: 200.h,
                // padding: EdgeInsets.symmetric(horizontal: 30.w),
                decoration: BoxDecoration(
                    color: ColorsManager.raWhite,
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
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      itemBuilder: (context, index) {
                        return Text(
                          '...',
                          style: TextStyle(color: Colors.grey[600]),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DetailItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Widget? child;

  const _DetailItem({
    required this.icon,
    required this.label,
    required this.value,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
      decoration: BoxDecoration(),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 20,
            ),
          ),
          horizontalSpace(15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12.sp,
                  ),
                ),
                verticalSpace(5),
                child ??
                    Text(
                      value,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13.sp,
                        // fontWeight: FontWeight.w500,
                      ),
                    ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
