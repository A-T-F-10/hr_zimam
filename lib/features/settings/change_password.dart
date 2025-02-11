import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zimam_app_hr/core/helpers/extensions.dart';

import '../../core/helpers/app_regex.dart';
import '../../core/helpers/spacing.dart';
import '../../core/routing/routes.dart';
import '../../core/theme/colors.dart';
import '../../core/theme/styles.dart';
import '../../core/widgets/app_text_form_field.dart';
import '../../core/widgets/custom_image_network.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  bool _currentPasswordVisible = false;
  bool _newPasswordVisible = false;
  bool _confirmPasswordVisible = false;

  final _currentPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  Widget _buildPasswordField({
    required String label,
    required String hint,
    required TextEditingController controller,
    required bool isVisible,
    required Function(bool) onVisibilityChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: AppTextFormField(
            controller: controller,
            textInputType: TextInputType.text,
            hintText: label,
            suffixIcon: GestureDetector(
              onTap: () => onVisibilityChanged(!isVisible),
              child: Icon(
                isVisible ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            isObscureText: !isVisible,
            validator: (value) {},
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10)),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size(0, 100.h),
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
                          'تغيير كلمة المرور',
                          textAlign: TextAlign.center,
                          style: TextStyles.font18DarkBlueSemiBold,
                        ),
                      ),
                      horizontalSpace(50)
                    ],
                  ),
                ],
              ),
            )),
        backgroundColor: Colors.grey[50],
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildPasswordField(
                        label: "كلمة المرور الحالية",
                        hint: "000",
                        controller: _currentPasswordController,
                        isVisible: _currentPasswordVisible,
                        onVisibilityChanged: (value) {
                          setState(() => _currentPasswordVisible = value);
                        },
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              // Add forgot password logic here
                              Navigator.pushNamed(
                                  context, Routes.forgetPasswordScreen);
                            },
                            child: Text(
                              'نسيت كلمة المرور؟',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 16),
                      _buildPasswordField(
                        label: "كلمة المرور الجديدة",
                        hint: "ادخل كلمة المرور الجديدة",
                        controller: _newPasswordController,
                        isVisible: _newPasswordVisible,
                        onVisibilityChanged: (value) {
                          setState(() => _newPasswordVisible = value);
                        },
                      ),
                      verticalSpace(24),
                      _buildPasswordField(
                        label: "تأكيد كلمة المرور الجديدة",
                        hint: "تأكيد كلمة المرور الجديدة",
                        controller: _confirmPasswordController,
                        isVisible: _confirmPasswordVisible,
                        onVisibilityChanged: (value) {
                          setState(() => _confirmPasswordVisible = value);
                        },
                      ),
                    ],
                  ),
                ),
              ),

              // Submit Button
              Padding(
                padding: const EdgeInsets.all(30),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 56),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "تغيير كلمة المرور",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.arrow_forward,
                          color: ColorsManager.raWhite, size: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _currentPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }
}
