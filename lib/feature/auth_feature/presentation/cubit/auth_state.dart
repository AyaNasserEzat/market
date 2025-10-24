
import 'package:pure_soft/feature/auth_feature/data/models/register_response_model.dart';
import 'package:pure_soft/feature/auth_feature/data/models/user_model.dart';


abstract class AuthState {}

class AuthInitial extends AuthState {}

// ⏳ تحميل أثناء أي عملية
class AuthLoading extends AuthState {}

// ✅ نجاح تسجيل الدخول
class LoginSuccess extends AuthState {
  final UserData user;
  LoginSuccess({required this.user});
}

// ✅ نجاح التسجيل
class RegisterSuccess extends AuthState {
  final RegisterResponseModel user;
  RegisterSuccess({required this.user});
}

// ✅ نجاح إعادة تعيين الباسورد
class ForgetPasswordSuccess extends AuthState {
  final String message;
  ForgetPasswordSuccess({required this.message});
}

// ❌ خطأ في أي عملية (login, register, forget)
class AuthError extends AuthState {
  final String message;
  AuthError({required this.message});
}

// 🚪 تسجيل الخروج
class AuthLoggedOut extends AuthState {}

// 🔵 مستخدم لسه مسجل دخول
class AuthLoggedIn extends AuthState {}
