import 'package:careapp/presentation/screen/intro_module/try_it_screen.dart';
import 'package:careapp/presentation/screen/intro_module/we_let_screen.dart';
import 'package:careapp/presentation/screen/sign_in_module/forgot_password_screen.dart';
import 'package:careapp/presentation/screen/sign_up_module/sign_up_confirm_screen.dart';
import 'package:careapp/presentation/screen/sign_up_module/sign_up_screen.dart';
import 'package:careapp/utils/route_string.dart';
import 'package:flutter/material.dart';

import '../presentation/screen/intro_module/help_screen.dart';
import '../presentation/screen/intro_module/splash_screen.dart';
import '../presentation/screen/intro_module/version_screen.dart';
import '../presentation/screen/sign_in_module/sign_in_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    return MaterialPageRoute(builder: (context) {
      switch (settings.name) {
        case RouteString.SPLASH_SCREEN:
          return const SplashScreen();
        case RouteString.VERSION_SCREEN:
          return const VersionScreen();
        case RouteString.HELP_SCREEN:
          return const HelpScreen();
        case RouteString.WELET_SCREEN:
          return const WeLetScreen();
        case RouteString.TRYIT_SCREEN:
          return const TryItScreen();
        case RouteString.SIGNIN_SCREEN:
          return const SignInScreen();
        case RouteString.FORGOT_PASSWORD_SCREEN:
          return const ForgotPasswordScreen();
        case RouteString.Sign_Up_SCREEN:
          return const SignUpScreen();
        case RouteString.Sign_Up_CONFIRM_SCREEN:
          return const SignUpConfirmScreen();
        default:
          return const SplashScreen();
      }
    });
  }
}
