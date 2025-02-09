import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/helpers/app_regex.dart';
import '../../../../core/theme/styles.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import '../../cubit/login_cubit.dart';

class SaIDlAndPassword extends StatefulWidget {
  const SaIDlAndPassword({super.key});

  @override
  State<SaIDlAndPassword> createState() => _SaIDlAndPasswordState();
}

class _SaIDlAndPasswordState extends State<SaIDlAndPassword> {
  bool isObscureText = true;

  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'رقم الموظف',
              style: TextStyles.font16BlackMedium,
            ).tr(),
            verticalSpace(15),
            AppTextFormField(
              textInputType: TextInputType.number,
              // prefixIcon: Image.asset('assets/images/component.png'),s
              hintText: '00000',
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.hasNumber(value)) {
                  return 'من فضلك ادخل رقم الموظف';
                }
              },
            ),
            verticalSpace(18),
            Text(
              'كلمة المرور',
              style: TextStyles.font16BlackMedium,
            ).tr(),
            AppTextFormField(
              textInputType: TextInputType.visiblePassword,
              controller: context.read<LoginCubit>().passwordController,
              hintText: '********',
              isObscureText: isObscureText,
              // prefixIcon: Image.asset('assets/images/lock-circle.png'),
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isObscureText = !isObscureText;
                  });
                },
                child: Icon(
                  isObscureText ? Icons.visibility_off : Icons.visibility,
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'من فضلك ادخل كلمة المرور';
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
