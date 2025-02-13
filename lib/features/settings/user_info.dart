import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zimam_app_hr/core/helpers/extensions.dart';
import 'package:zimam_app_hr/core/widgets/app_text_form_field.dart';

import '../../core/helpers/spacing.dart';
import '../../core/theme/colors.dart';
import '../../core/theme/styles.dart';
import '../../core/widgets/custom_image_network.dart';

class PersonalInformationPage extends StatelessWidget {
  const PersonalInformationPage({super.key});

  Widget _buildInfoRow(String label, String value,
      {TextDirection? hintTextDirection}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyles.font12BlackRegular,
        ),
        verticalSpace(15),
        AppTextFormField(
          hintTextDirection: hintTextDirection,
          readOnly: true,
          hintStyle: TextStyles.font12BlackRegular,

          contentPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 9.h),
          backgroundColor: ColorsManager.lighterGray2,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(5)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none),
          textInputType: TextInputType.number,
          // prefixIcon: Image.asset('assets/images/component.png'),s
          hintText: value,
          validator: (value) {},
        ),
        verticalSpace(15),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size(0, 250.h),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/islamic-pattern.png',
                    ),
                    fit: BoxFit.cover),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  verticalSpace(20),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.center,
                          height: 45.h,
                          width: 30.w,
                          margin: EdgeInsets.symmetric(
                              horizontal: 5.w, vertical: 15.h),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: ColorsManager.raBlack),
                          child: IconButton(
                            alignment: Alignment.center,
                            icon: Icon(
                              Icons.arrow_back,
                              color: ColorsManager.raWhite,
                            ),
                            onPressed: () {
                              context.pop();
                            },
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Text(
                          "المعلومات الشخصية",
                          textAlign: TextAlign.center,
                          style: TextStyles.font18DarkBlueSemiBold,
                        ),
                      ),
                      horizontalSpace(50)
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        child: chickImageNetwork(url: ''),
                        height: 100.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(5),
                  Text(
                    'عبدالله القحطاني',
                    style: TextStyles.font14DarkBlueMedium,
                  ),
                  verticalSpace(10),
                ],
              ),
            )),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            // Information list
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 30.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildInfoRow("رقم الهوية", "2378903242",
                        hintTextDirection: TextDirection.ltr),
                    _buildInfoRow("الاسم", "عبدالله محمد علي القحطاني"),
                    _buildInfoRow("تاريخ الميلاد", "1999/01/01",
                        hintTextDirection: TextDirection.ltr),
                    _buildInfoRow("المسمى الوظيفي", "مهندس برمجيات"),
                    _buildInfoRow("رقم الجوال", "+966 555 5555 555",
                        hintTextDirection: TextDirection.ltr),
                    _buildInfoRow("العنوان", "مكة المكرمة - حي العدلية"),
                    _buildInfoRow("الجنس", "ذكر"),
                    _buildInfoRow("المؤهل العلمي", "دبلوم"),
                    _buildInfoRow("اسم الحساب البنكي", "مصرف الراجحي"),
                    _buildInfoRow("رقم الآيبان", "SA0610000023048998000106",
                        hintTextDirection: TextDirection.ltr),
                    verticalSpace(16),
                    Text(
                      'السيرة الذاتية الموظف',
                      style: TextStyles.font12BlackRegular,
                    ),
                    verticalSpace(15),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: ColorsManager.lighterGray2,
                        // border: Border.all(color: Colors.grey[300]!),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              "LSRWXyBz9LEdjpOaO5W.pdf",
                              style: TextStyles.font12BlackRegular,
                            ),
                          ),
                          const Icon(Icons.download, color: Colors.grey),
                        ],
                      ),
                    ),
                    verticalSpace(100)
                  ],
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: ColorsManager.raWhite,
          elevation: 1,
          extendedPadding: EdgeInsets.symmetric(horizontal: 100.w),
          onPressed: () {},
          label: Center(
            child: const Text(
              "حذف الحساب نهائيا",
              style: TextStyle(
                color: Colors.red,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
