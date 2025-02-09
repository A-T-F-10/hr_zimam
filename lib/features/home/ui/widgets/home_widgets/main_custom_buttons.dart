import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zimam_app_hr/core/helpers/extensions.dart';

import '../../../../../core/routing/routes.dart';

class ButtonsGridMenu extends StatelessWidget {
  const ButtonsGridMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 300.h,
      child: Directionality(
        textDirection: TextDirection.rtl, // For Arabic layout
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2.w,
            mainAxisSpacing: 15.dg,
            crossAxisSpacing: 20.w,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          shrinkWrap: true,
          children: [
            _buildGridItem(
                icon: Icons.account_tree_outlined,
                label: 'الهيكل التنظيمي',
                onTap: () {
                  context.pushNamed(Routes.organizationalStructurePage);
                }),
            _buildGridItem(
                icon: Icons.calendar_today_outlined,
                label: 'طلب إجازة',
                onTap: () {
                  print('object2');
                }),
            _buildGridItem(
                icon: Icons.description_outlined,
                label: 'لائحة تنظيم',
                onTap: () {
                  context.pushNamed(Routes.attendanceRecordPage);
                }),
            _buildGridItem(
                icon: Icons.attach_money_outlined,
                label: 'الرواتب والبدلات',
                onTap: () {
                  print('object4');
                }),
            _buildGridItem(
                icon: Icons.description_outlined,
                label: 'الطلبات',
                onTap: () {
                  print('object5');
                }),
            _buildGridItem(
              icon: Icons.access_time_outlined,
              label: 'سجل الحضور والانصراف',
              onTap: () {
                print('object6');
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGridItem(
      {required IconData icon, required String label, required var onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.grey.shade200,
            width: 1.w,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 25.h,
              // color: Colors.grey.shade700,
            ),
            const SizedBox(height: 12),
            Text(
              label,
              style: TextStyle(
                fontSize: 12.sp,
                color: Colors.grey.shade800,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
