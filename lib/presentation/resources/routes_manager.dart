import 'package:flutter/material.dart';
import 'package:tuts/presentation/forgot_password/forgot_password_view.dart';
import 'package:tuts/presentation/login/login_view.dart';
import 'package:tuts/presentation/main/main_view.dart';
import 'package:tuts/presentation/onboarding/view/onboarding_view.dart';
import 'package:tuts/presentation/register/register_view.dart';
import 'package:tuts/presentation/resources/strings_manager.dart';
import 'package:tuts/presentation/splash/splash_view.dart';
import 'package:tuts/presentation/store_details/store_details_view.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onBoarding";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainView());
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => const StoreDetailsView());

      default:
        return unDefineRoute();
    }
  }

  static Route<dynamic> unDefineRoute() {
    return MaterialPageRoute(
      builder:(_)=> Scaffold(
        appBar: AppBar(

          title: const Text(AppString.noRouteFound),
        ),
        body: const Center(child: Text(AppString.noRouteFound)),
      ),
    );
  }
  
}


