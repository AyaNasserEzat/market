import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pure_soft/feature/auth_feature/data/models/auth_qerparmeter.dart';
import 'package:pure_soft/feature/auth_feature/data/models/forget_password_quer_parameter.dart';
import 'package:pure_soft/feature/auth_feature/data/models/login_quer_parmeters.dart';
import 'package:pure_soft/feature/auth_feature/data/repo/auth_repo_imp.dart';
import 'package:pure_soft/feature/auth_feature/presentation/cubit/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.authRepo) : super(AuthInitial());
  final AuthRepo authRepo;
  //register
 TextEditingController nameController = TextEditingController();
 TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
//login
 TextEditingController loginPasswordController = TextEditingController();
  TextEditingController loginPhoneController = TextEditingController();
//forgetPassword
  TextEditingController emailController = TextEditingController();
  register() async {
    emit(AuthLoading());
    final res = await authRepo.register(
      AuthQerparmeter(
        name: nameController.text,
        password: passwordController.text,
        c_password: passwordController.text,
        phone: phoneController.text,
      ),
    );
    res.fold(
      (e) => emit(AuthError(message: e.errorMessage)),
      (e) => emit(RegisterSuccess(user: e)),
    );
  }

    login() async {
    emit(AuthLoading());
    final res = await authRepo.login(
  LoginQuerParmeters(phone_email: loginPhoneController.text, password: loginPasswordController.text)
    );
    res.fold(
      (e) => emit(AuthError(message: e.errorMessage)),
      (e) => emit(LoginSuccess(user: e)),
    );
  }

  //forgetpassword
    forgetPassword() async {
    emit(AuthLoading());
    final res = await authRepo.forgetPasswoed(
ForgetPasswordQuerParameter(email: emailController.text));
    res.fold(
      (e) => emit(AuthError(message: e.errorMessage)),
      (e) => emit(ForgetPasswordSuccess(message: e.message!)),
    );
  }
}
