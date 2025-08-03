import 'package:go_router/go_router.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/forget_password_view.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/login_view.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/otp_view.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/sign_up_view.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/splash_view.dart';
import 'package:pure_soft/feature/home/presentaion/views/bottom_navigation_bar.dart';
import 'package:pure_soft/feature/home/presentaion/views/home_view.dart';
import 'package:pure_soft/feature/home/presentaion/views/product_details_view.dart';
import 'package:pure_soft/feature/home/presentaion/views/saller_product_view.dart';
import 'package:pure_soft/feature/profile/presentation/views/profile_view.dart';
import 'package:pure_soft/feature/profile/presentation/views/update_profile_view.dart';

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
               GoRoute(
        path: "/home",
        builder: (context, state) => const HomeView(),
      ),
                     GoRoute(
        path: "/bottom",
        builder: (context, state) =>  BottomNavigationBar(),
      ),
                     GoRoute(
        path: "/sallerProduct",
        builder: (context, state) =>  SallerProductView(),
      ),

                           GoRoute(
        path: "/productDetails",
        builder: (context, state) =>  ProductDetailsView(),
      ),
                                 GoRoute(
        path: "/cart",
        builder: (context, state) =>  ProductDetailsView(),
      ),
       GoRoute(
        path: "/updateProfile",
        builder: (context, state) => const UpdateProfileView(),
      ),
       GoRoute(
        path: "/profile",
        builder: (context, state) => const ProfileView(),
      ),
    ],
  );
}
