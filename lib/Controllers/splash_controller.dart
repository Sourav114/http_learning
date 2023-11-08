import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:http_learning/Utils/Routing/routes_name.dart';

class SplashCtrl extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer(const Duration(seconds: 4), () {
      checkAuthenticationState();
    });
  }

  void checkAuthenticationState() {

    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      Get.offNamed("/home");
    } else {
      Get.offNamed(RouteNames.loginScreen);
    }
  }
}
