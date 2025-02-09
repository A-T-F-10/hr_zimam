import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/colors.dart';

// ignore: non_constant_identifier_names
Widget CustomDivider() {
  return Divider(
    indent: 10.w,
    endIndent: 10.w,
    color: ColorsManager.raGray,
  );
}
