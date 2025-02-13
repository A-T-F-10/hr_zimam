import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zimam_app_hr/core/helpers/extensions.dart';
import 'package:zimam_app_hr/core/helpers/spacing.dart';
import 'package:zimam_app_hr/core/routing/routes.dart';
import 'package:zimam_app_hr/core/theme/colors.dart';

import '../../core/theme/styles.dart';
import '../../core/widgets/custom_image_network.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool _isToggled = false;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size(0, 220.h),
            child: Container(
              // margin: EdgeInsets.all(5),
              padding: EdgeInsets.symmetric(horizontal: 5),
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
                  verticalSpace(35),
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
                          'الاعدادات',
                          textAlign: TextAlign.center,
                          style: TextStyles.font18DarkBlueSemiBold,
                        ),
                      ),
                      horizontalSpace(50)
                    ],
                  ),
                  Container(
<<<<<<< HEAD
                    child: chickImageNetwork(url: 'testing.com'),
=======
                    child: chickImageNetwork(url: ''),
>>>>>>> 67aaba6c96c0e3a12c9bdfea529df2288ac375e4
                    height: 100.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  Text(
                    'عبدالله القحطاني',
                    style: TextStyles.font14DarkBlueMedium,
                  ),
                  verticalSpace(10),
                ],
              ),
            )),
        body: ListView(
          children: [
            ListTile(
              leading: Container(
                height: 30.h,
                width: 30.w,
                decoration: BoxDecoration(
                    color: ColorsManager.darkBlue,
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  Icons.person,
                  color: ColorsManager.raWhite,
                ),
              ),
              title: Text(
                'المعلومات الشخصية',
                style: TextStyles.font14DarkBlueMedium,
              ),
              onTap: () {
                context.pushNamed(Routes.personalInformationPage);
                // Handle change language
              },
            ),
            ListTile(
              leading: Container(
                height: 30.h,
                width: 30.w,
                decoration: BoxDecoration(
                    color: ColorsManager.darkBlue,
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  Icons.lock,
                  size: 15.h,
                  color: ColorsManager.raWhite,
                ),
              ),
              title: Text(
                'تغيير كلمة المرور',
                style: TextStyles.font14DarkBlueMedium,
              ),
              onTap: () {
                context.pushNamed(Routes.changePassword);

                // Handle change language
              },
            ),
            ListTile(
              leading: Container(
                height: 30.h,
                width: 30.w,
                decoration: BoxDecoration(
                    color: ColorsManager.darkBlue,
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  Icons.notifications,
                  size: 15.h,
                  color: ColorsManager.raWhite,
                ),
              ),
              title: Text(
                'الإشعارات ',
                style: TextStyles.font14DarkBlueMedium,
              ),
              trailing: Switch(
                // focusColor: ColorsManager.raBlack,
                activeColor: ColorsManager.raWhite,
                activeTrackColor: ColorsManager.raBlack,
                inactiveTrackColor: ColorsManager.raGray,
                inactiveThumbColor: ColorsManager.raBlack,
                value: _isToggled,
                onChanged: (bool value) {
                  setState(() {
                    _isToggled = value;
                  });
                },
              ),
              onTap: () {
<<<<<<< HEAD
                // Handle change language
=======
                context.pushNamed(Routes.notification);
>>>>>>> 67aaba6c96c0e3a12c9bdfea529df2288ac375e4
              },
            ),
          ],
        ),
        persistentFooterButtons: [
          ListTile(
            leading: Container(
              height: 30.h,
              width: 30.w,
              decoration: BoxDecoration(
                  color: ColorsManager.raRed3,
                  borderRadius: BorderRadius.circular(10)),
              child: Icon(
                Icons.logout,
                size: 15.h,
                color: ColorsManager.raRed,
              ),
            ),
            title: Text(
              'تسجيل الخروج',
              style: TextStyles.font16RedRegular,
            ),
            onTap: () {
              // Handle change language
            },
          ),
        ],
      ),
    );
  }
}
