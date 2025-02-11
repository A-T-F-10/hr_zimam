import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zimam_app_hr/core/helpers/extensions.dart';
import 'package:zimam_app_hr/core/helpers/spacing.dart';
import 'package:zimam_app_hr/features/home/ui/widgets/home_widgets/custom_card_sats.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theme/styles.dart';

class RequestsPage extends StatelessWidget {
  const RequestsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
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
            'الطلبات',
            style: TextStyles.font16WhiteSemiBold,
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            verticalSpace(20),
            CustomCardSats(),

            // Requests List
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  _RequestCard(
                    status: 'قيد الانتظار',
                    statusColor: Colors.grey[600]!,
                  ),
                  _RequestCard(
                    status: 'تم القبول',
                    statusColor: Colors.green[600]!,
                  ),
                  _RequestCard(
                    status: 'مرفوض',
                    statusColor: Colors.red[600]!,
                  ),
                  _RequestCard(
                    status: 'تم القبول',
                    statusColor: Colors.green[600]!,
                  ),
                  _RequestCard(
                    status: 'تم القبول',
                    statusColor: Colors.green[600]!,
                  ),
                ],
              ),
            ),

            // Bottom Navigation Indicator
            Container(
              width: 120,
              height: 4,
              margin: const EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String number;
  final String label;
  final Color color;

  const _StatCard({
    required this.number,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            number,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

class _RequestCard extends StatelessWidget {
  final String status;
  final Color statusColor;

  const _RequestCard({
    required this.status,
    required this.statusColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.requestsDerails);
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.description,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                horizontalSpace(10),
                const Text(
                  'طلب اجازة مرضية',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Text(
              status,
              style: TextStyle(
                color: statusColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
