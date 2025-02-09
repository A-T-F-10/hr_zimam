import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/routing/routes.dart';
import '../../../core/theme/colors.dart';
import '../../../core/theme/styles.dart';
import '../../../core/widgets/app_text_button.dart';
import '../../../core/widgets/custom_login_bar.dart';
import 'widgets/custom_forget_pass.dart';
import 'widgets/login_bloc_listener.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ForgetPasswordScreenState createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  // ignore: unused_element
  void _submit() {
    if (_formKey.currentState!.validate()) {
      // Handle forget password logic here
      print('Email: ${_emailController.text}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsManager.raLightGray,
        appBar: customLoginBar(context: context),
        body: Directionality(
            textDirection: TextDirection.rtl,
            child: SafeArea(
              child: LoginBlocListener(
                child: SingleChildScrollView(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    verticalSpace(36),
                    Column(
                      children: [
                        const ForgetPassword(),
                        verticalSpace(24),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: AppTextButton(
                            borderRadius: 5,
                            backgroundColor: ColorsManager.raBlack,
                            buttonText: "إرسال",
                            textStyle: TextStyles.font13WhiteBold,
                            onPressed: () {},
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {
                                // Add forgot password logic here
                                Navigator.pushNamed(
                                    context, Routes.loginScreen);
                              },
                              child: Text(
                                'تسجيل الدخول',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14.sp,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                )),
              ),
            )));
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }
}
