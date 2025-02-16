import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helpers/extensions.dart';
import '../theme/styles.dart';

PreferredSizeWidget customAppBar(
    {required String title, required BuildContext context}) {
  return AppBar(
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
      title,
      style: TextStyles.font16WhiteSemiBold,
    ),
    centerTitle: true,
  );
}
