import 'package:get/get_navigation/get_navigation.dart';
import 'package:http_learning/Screens/forgot_screen.dart';
import 'package:http_learning/Screens/home_page.dart';
import 'package:http_learning/Screens/login_screen.dart';
import 'package:http_learning/Screens/register_screen.dart';
import 'package:http_learning/Screens/splash_screen.dart';
import 'package:http_learning/Utils/Routing/routes_name.dart';

class Routes{
  static appRoutes() => [
    GetPage(
        name: RouteNames.splashScreen,
        page: () => const SplashScreen(),
        transition: Transition.upToDown),
    GetPage(
        name: RouteNames.loginScreen,
        page: () => LoginScreen(),
        transition: Transition.upToDown),
    GetPage(
        name: RouteNames.registerScreen,
        page: () => RegisterScreen(),
        transition: Transition.upToDown),
    GetPage(
        name: RouteNames.forgotPasswordScreen,
        page: () => ForgotPassword(),
        transition: Transition.upToDown),
    GetPage(
        name: RouteNames.homeScreen,
        page: () => HomePage(),
        transition: Transition.upToDown),
  ];
}