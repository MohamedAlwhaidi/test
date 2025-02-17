import 'package:advanced_flutter_arabic/presentation/forgot_password/forgot_password_view.dart';
import 'package:advanced_flutter_arabic/presentation/login/login_view.dart';
import 'package:advanced_flutter_arabic/presentation/main/main_view.dart';
import 'package:advanced_flutter_arabic/presentation/onboarding/cubit/onboarding_cubit.dart';
import 'package:advanced_flutter_arabic/presentation/onboarding/view/onboarding_view.dart';
import 'package:advanced_flutter_arabic/presentation/register/register_view.dart';
import 'package:advanced_flutter_arabic/presentation/resources/strings_manager.dart';
import 'package:advanced_flutter_arabic/presentation/splash/splash_view.dart';
import 'package:advanced_flutter_arabic/presentation/store_details/store_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Routes {
  static const String splashRoute = '/';
  static const String loginRoute = '/login';
  static const String registerRoute = '/register';
  static const String forgotPasswordRoute = '/forgotPassword';
  static const String onBoardingRoute = '/onBoarding';
  static const String mainRoute = '/main';
  static const String storeDetailsRoute = '/storeDetails';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(
            builder: (_) => BlocProvider<OnboardingCubit>(
                  create: (context) => OnboardingCubit(),
                  child: const OnBoardingView(),
                ));
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainView());
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => const StoreDetailsView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(AppStrings.noRouteFound),
              ),
              body: const Center(child: Text(AppStrings.noRouteFound)),
            ));
  }
}
