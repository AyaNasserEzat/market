import 'package:go_router/go_router.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/forget_password_view.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/login_view.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/otp_view.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/sign_up_view.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/splash_view.dart';

class AppRouter {
  static String signUp = "/signUp";
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: '/login', builder: (context, state) => const LoginView()),
      GoRoute(path: signUp, builder: (context, state) => const SignUpScreen()),
    
      GoRoute(
        path: "/forgetPassword",
        builder: (context, state) => const ForgetPasswordView(),
      ),
         GoRoute(
        path: "/otp",
        builder: (context, state) => const OtpView(),
      ),
    ],
  );
}
