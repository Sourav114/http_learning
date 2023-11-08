import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:http_learning/Controllers/splash_controller.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: GetBuilder<SplashCtrl>(
        init: SplashCtrl(),
        builder: (controller) {
          return Center(
              child: Lottie.asset("lib/images/input.json")
          );
        },
    ),
    );
  }
}
