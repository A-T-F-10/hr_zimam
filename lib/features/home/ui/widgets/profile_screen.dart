import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';
import '../../../../core/widgets/custom_image_network.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyDrawerHeader(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 450.h,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      buildMenuItem(
                        SVG_icon: 'assets/svgs/user_icon.svg',
                        title: 'profile',
                        onTap: () {},
                      ),
                      verticalSpace(10),
                      buildMenuItem(
                        SVG_icon: 'assets/svgs/users_icon.svg',
                        title: 'workers',
                        onTap: () {},
                      ),
                      verticalSpace(10),
                      buildMenuItem(
                        SVG_icon: 'assets/svgs/message.svg',
                        title: 'technicalSupport',
                        onTap: () {},
                      ),
                      verticalSpace(10),
                      buildMenuItem(
                        SVG_icon: 'assets/svgs/calendar.svg',
                        title: 'attendanceRegistration',
                        onTap: () {},
                      ),
                      verticalSpace(10),
                      buildMenuItem(
                        SVG_icon: 'assets/svgs/language-outline 1.svg',
                        title: 'changeLanguage',
                        onTap: () {},
                      ),
                      verticalSpace(10),
                      buildMenuItem(
                        SVG_icon: 'assets/svgs/annotation-warning.svg',
                        title: 'termsOfUse',
                        onTap: () {},
                      ),
                      verticalSpace(10),
                      buildMenuItem(
                        SVG_icon: 'assets/svgs/shield.svg',
                        title: 'privacyPolicy',
                        onTap: () {},
                      ),
                      verticalSpace(10),
                    ],
                  ),
                )),
            Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
              buildMenuItem(
                  SVG_icon: 'assets/svgs/log-out.svg',
                  isLogout: true,
                  title: "signOut",
                  onTap: () {})
            ]),
          ],
        ),
      ],
    );
  }

  // Menu Item Widget
  Widget buildMenuItem(
      // ignore: non_constant_identifier_names
      {required String SVG_icon,
      bool isLogout = false,
      required String title,
      required VoidCallback onTap}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                height: 20.h,
                width: 20.w,
                decoration: BoxDecoration(
                  color: isLogout
                      ? ColorsManager.raRed3
                      : ColorsManager
                          .raBrown5, // Light background color for icons
                  borderRadius: BorderRadius.circular(5),
                ),
                child: SizedBox(
                  height: 10.h,
                  width: 10.w,
                  child: SvgPicture.asset(
                    SVG_icon,
                    width: 2,
                    height: 2,
                  ),
                )

                // Icon(
                //   SVG_icon,
                //   size: 15.h,
                //   color: isLogout? ColorsManager.raRed: ColorsManager.raBrown, // Icon color
                // ),
                ),
            horizontalSpace(10),
            Text(
              title,
              style: isLogout
                  ? TextStyles.font13RedRegular
                  : TextStyles.font13BlackRegular,
            ).tr(),
          ],
        ),
      ),
    );
  }
}

class MyDrawerHeader extends StatelessWidget {
  const MyDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      padding: EdgeInsets.zero, // Remove padding for full coverage
      decoration: BoxDecoration(
        color: ColorsManager.raBrown, // Fallback background color
      ),
      child: Stack(
        children: [
          // SVG Background
          Positioned.fill(
            child: SvgPicture.asset(
              'assets/svgs/backgrond_image.svg',
              fit: BoxFit.cover, // Ensure the SVG covers the area
            ),
          ),

          // Optional Content (Overlay)
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Profile Image
                Container(
                  height: 60.h,
                  width: 60.w,
                  child: chickImageNetwork(url: ''),
                  decoration: BoxDecoration(
                    color: ColorsManager.raBrown2,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),

                const SizedBox(height: 10),
                // Name
                Text(
                  'فهد عبدالله العامري',
                  style: TextStyles.font13WhiteBold,
                ),
                // Role
                Text(
                  'مراقب',
                  style: TextStyles.font10WhiteRegular,
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
