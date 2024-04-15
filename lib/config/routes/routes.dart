import 'package:flutter/material.dart';
import 'package:mlc_app/features/auth/precentation/pages/auth_page.dart';
import 'package:mlc_app/features/auth/precentation/pages/forgot_password_page.dart';
import 'package:mlc_app/features/auth/precentation/pages/verify_code_page.dart';
import 'package:mlc_app/features/driver/home/precentation/pages/active_order_page.dart';
import 'package:mlc_app/features/driver/home/precentation/pages/driver_main_page.dart';
import 'package:mlc_app/features/driver/home/precentation/pages/post_detail_page.dart';
import 'package:mlc_app/features/driver/home_menues/precentation/pages/edit_documnets_page.dart';
import 'package:mlc_app/features/driver/home_menues/precentation/pages/edit_my_auto.dart';
import 'package:mlc_app/features/driver/home_menues/precentation/pages/my_info_page.dart';
import 'package:mlc_app/features/driver/home_menues/precentation/pages/my_orders_page.dart';
import 'package:mlc_app/features/driver/profile/precentation/pages/profile_page.dart';
import 'package:mlc_app/features/main/precentation/pages/choose_language_page.dart';
import 'package:mlc_app/features/main/precentation/pages/main_page.dart';
import 'package:mlc_app/features/main/precentation/pages/privacy_police_page.dart';
import 'package:mlc_app/features/main/precentation/pages/splash_page.dart';

class Routes {
  static const splashPage = '/';
  static const privacyPolicePage = '/privacyPolicePage';
  static const chooseLanguagePage = '/chooseLanguagePage';
  static const authPage = '/authPage';
  static const verifyCodePage = '/verifyCodePage';
  static const forgotPasswordPage = '/forgotPasswordPage';
  static const mainPage = '/mainPage';
  static const driverMainPage = '/driverMainPage';
  static const postDetailPage = '/postDetailPage';
  static const myOrdersPage = '/myOrdersPage';
  static const myInfoPage = '/myInfoPage';
  static const editMyAutoPage = '/editMyAutoPage';
  static const editDocumentsPage = '/editDocumentsPage';
  static const profilePage = '/profilePage';
  static const activeOrderPage = '/activeOrderPage';

  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    try {
      final Map<String, dynamic>? args =
          routeSettings.arguments as Map<String, dynamic>?;
      args ?? <String, dynamic>{};
      switch (routeSettings.name) {
        case splashPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const SplashPage(),
          );
        case privacyPolicePage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const PrivacyPolicePage(),
          );
        case chooseLanguagePage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const ChooseLanguagePage(),
          );
        case authPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const AuthPage(),
          );
        case verifyCodePage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => VerifyCodePage(
              smsCodeResponseModel: args!["smsCodeResponse"],
              registrationModel: args["registerModel"],
            ),
          );
        case forgotPasswordPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => ForgotPasswordPage(),
          );
        case mainPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const MainPage(),
          );
        case driverMainPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => DriverMainPage(),
          );
        case postDetailPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const PostDeatilPage(),
          );
        case myOrdersPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const MyOrdersPage(),
          );
        case myInfoPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const MyInfoPage(),
          );
        case editMyAutoPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const EditMyAutoPage(),
          );

        case editDocumentsPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) =>
                EditDocumentsPage(myDocStatus: args?['myDocStatus']),
          );
        case profilePage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const ProfilePage(),
          );
        case activeOrderPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const ActiveOrderPage(),
          );
        default:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const MainPage(),
          );
      }
    } catch (e) {
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const MainPage(),
      );
    }
  }
}
