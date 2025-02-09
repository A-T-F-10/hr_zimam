import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import '../../../../core/helpers/extensions.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';
import '../../cubit/login_cubit.dart';
import '../../cubit/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  final Widget child;

  const LoginBlocListener({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) {
        print('listenWhen previous: $previous');
        return previous != current;
      },
      listener: (context, state) {
        print('listener state: $state');
        state.whenOrNull(
          loading: () {
            print('loading state');
            showDialog(
              context: context,
              builder: (context) => Center(
                  child: LoadingAnimationWidget.inkDrop(
                color: ColorsManager.raBrown,
                size: 16.h,
              )),
            );
          },
          success: (loginResponse) {
            print('success state');
            // context.pop();
            // context.pushNamed(Routes.homeScreen);
          },
          error: (error) {
            print('error state');
            // context.pop();
            setupErrorState(context, error);
          },
        );
      },
      child: child,
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
          style: TextStyles.font15DarkGrayTextField,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: TextStyles.font14BlueSemiBold,
            ),
          ),
        ],
      ),
    );
  }
}
