import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/routing/routes.dart';
import '../../../core/theme/colors.dart';
import '../../../core/theme/styles.dart';
import '../../../core/widgets/app_text_button.dart';
import '../../../core/widgets/custom_login_bar.dart';
import '../cubit/login_cubit.dart';
import 'widgets/sa_id_and_password.dart';
import 'widgets/login_bloc_listener.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                    // physics: const NeverScrollableScrollPhysics(),
                    // reverse: true,
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    verticalSpace(15),

                    // this is Registration part design

                    verticalSpace(36),
                    Column(
                      children: [
                        const SaIDlAndPassword(),
                        verticalSpace(24),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: AppTextButton(
                            borderRadius: 5,
                            backgroundColor: ColorsManager.raBlack,
                            buttonText: "تسجيل الدخول",
                            textStyle: TextStyles.font13WhiteBold,
                            onPressed: () {
                              Navigator.pushNamed(context, Routes.homeScreen);
                              // validateThenDoLogin(context);
                            },
                          ),
                        ),
                      ],
                    ),
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
                    )
                  ],
                )),
              ),
            )));
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
    }
  }
}
