import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zimam_app_hr/core/widgets/custom_app_bar.dart';

import '../../../core/theme/styles.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: customAppBar(title: "الإشعارات", context: context),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "الإشعارات",
                  style: TextStyles.font16BlackMedium,
                ),
              ),
            ),

            // Expanded(
            //     child: Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   // crossAxisAlignment: CrossAxisAlignment.center,
            //   children: [
            //     Image.asset(
            //       "assets/images/notification.png",
            //       height: 200.h,
            //       width: 200.w,
            //       fit: BoxFit.cover,
            //     ),
            //     verticalSpace(20),
            //     Text(
            //       "لا توجد إشعارات جديدة الآن",
            //       style: TextStyles.font16BlackMedium,
            //     ),
            //     Text(
            //       "سنخبرك فورا عند وصول إشعارات جديدة.",
            //       style: TextStyles.font12BlackRegular,
            //     ),
            //   ],
            // )),

            Expanded(
              child: ListView.builder(
                itemCount: 5,
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 12.h),
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(61, 158, 158, 158),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 40.h,
                          width: 30.w,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(5)),
                          child: Icon(
                            Icons.notifications_outlined,
                            color: Colors.white,
                            size: 20.dg,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "تحديث حالة الطلب",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "تم قبول طلب الاجازة",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 12),
                        Text(
                          "$index ساعة",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
