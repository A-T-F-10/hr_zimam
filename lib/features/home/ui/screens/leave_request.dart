import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zimam_app_hr/core/helpers/custom_divider.dart';
import 'package:zimam_app_hr/core/helpers/extensions.dart';
import 'package:zimam_app_hr/core/helpers/spacing.dart';
import 'package:zimam_app_hr/core/theme/colors.dart';
<<<<<<< HEAD

import '../../../../core/theme/styles.dart';
=======
import 'package:zimam_app_hr/features/home/ui/screens/salaries.dart';

import '../../../../core/theme/styles.dart';
import '../../../../core/widgets/custom_app_bar.dart';
>>>>>>> 67aaba6c96c0e3a12c9bdfea529df2288ac375e4

class LeaveRequestForm extends StatefulWidget {
  const LeaveRequestForm({super.key});

  @override
  State<LeaveRequestForm> createState() => _LeaveRequestFormState();
}

class _LeaveRequestFormState extends State<LeaveRequestForm> {
  String selectedLeaveType = 'occasion';
<<<<<<< HEAD
  final startDate = DateTime(2025, 1, 1);
  final endDate = DateTime(2025, 2, 1);

  final leaveTypes = [
    {'id': 'sick', 'label': 'إجازة مرضية', 'days': '10 ايام'},
    {'id': 'occasion', 'label': 'إجازة مناسبة', 'days': '10 ايام'},
    {'id': 'review', 'label': 'إجازة مراجعات', 'days': '2 ايام'},
    {'id': 'marriage', 'label': 'إجازة زواج', 'days': '4 ايام'},
    {'id': 'maternity', 'label': 'إجازة وضع', 'days': '2 ايام'},
    {'id': 'annual', 'label': 'إجازة سنوية', 'days': '5 ايام'},
  ];
=======
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
>>>>>>> 67aaba6c96c0e3a12c9bdfea529df2288ac375e4

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
<<<<<<< HEAD
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
            'طلب إجازة',
            style: TextStyles.font16WhiteSemiBold,
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 200.h,
=======
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
>>>>>>> 67aaba6c96c0e3a12c9bdfea529df2288ac375e4
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
<<<<<<< HEAD
=======
                    verticalSpace(5),
>>>>>>> 67aaba6c96c0e3a12c9bdfea529df2288ac375e4
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
<<<<<<< HEAD
=======
                              days = type['days'];
>>>>>>> 67aaba6c96c0e3a12c9bdfea529df2288ac375e4
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
<<<<<<< HEAD
                            style: const TextStyle(fontSize: 11),
=======
                            style: const TextStyle(
                              fontSize: 10,
                            ),
>>>>>>> 67aaba6c96c0e3a12c9bdfea529df2288ac375e4
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),

<<<<<<< HEAD
              verticalSpace(20),
              // Main Form
              Expanded(
                child: Card(
                  color: ColorsManager.raWhite,
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Leave Type Section
                        const Text(
                          'نوع الإجازة',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),
                        GridView.count(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          crossAxisCount: 3,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                          childAspectRatio: 2.5,
                          children: leaveTypes.map((type) {
                            final isSelected = type['id'] == selectedLeaveType;
                            return ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  selectedLeaveType = type['id']!;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: isSelected
                                    ? Theme.of(context).primaryColor
                                    : Colors.white,
                                foregroundColor:
                                    isSelected ? Colors.white : Colors.black,
                              ),
                              child: Text(
                                type['label']!,
                                textAlign: TextAlign.center,
                                style: const TextStyle(fontSize: 12),
                              ),
                            );
                          }).toList(),
                        ),
                        const SizedBox(height: 24),

                        // Number of Days
                        const Text(
                          'عدد الايام',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(leaveTypes[1]['days'].toString()),
                        ),
                        const SizedBox(height: 24),

                        // Date Range
                        const Text(
                          'تاريخ من',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        TextFormField(
                          initialValue: '2025-01-01',
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            suffixIcon: const Icon(Icons.calendar_today),
                          ),
                        ),
                        const SizedBox(height: 16),

                        const Text(
                          'تاريخ الى',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        TextFormField(
                          initialValue: '2025-02-01',
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            suffixIcon: const Icon(Icons.calendar_today),
                          ),
                        ),
                        const SizedBox(height: 24),

                        // Details
                        const Text(
                          'تفاصيل الطلب',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        TextFormField(
                          maxLines: 4,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),

                        // Attachments
                        const Text(
                          'المرفقات',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: const [
                              Icon(Icons.upload_file),
                              SizedBox(width: 8),
                              Text('........'),
                            ],
                          ),
                        ),
                        const SizedBox(height: 24),

                        // Submit Button
                        SizedBox(
                          width: double.infinity,
                          height: 48,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              foregroundColor: Colors.white,
                            ),
                            child: const Text('إرسال'),
                          ),
                        ),
                      ],
                    ),
                  ),
=======
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
>>>>>>> 67aaba6c96c0e3a12c9bdfea529df2288ac375e4
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
