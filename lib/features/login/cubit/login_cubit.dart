import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/helpers/constants.dart';
import '../../../core/helpers/shared_pref_helper.dart';
import '../../../core/networking/dio_factory.dart';
import '../data/models/login_request_body.dart';
import '../data/repos/login_repo.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController saIDController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginStates() async {
    emit(const LoginState.loading());
    print('loading');

    final response = await _loginRepo.login(
      LoginRequestBody(
        saID: int.parse(saIDController.text),
        password: int.parse(passwordController.text),
      ),
    );

    print(response);

    response.when(success: (loginResponse) async {
      await saveUserToken(loginResponse.userData?.token ?? '');
      await saveUserDate(loginResponse.userData.toString()).then(
        (value) => print('users value after save'),
      );

      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      print(error);
      emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
    });
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }

  Future<void> saveUserDate(String date) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userData, date);
  }
}
