
import 'package:get/get.dart';
import 'package:http_learning/Controllers/firebase_signin.dart';
import 'package:http_learning/Controllers/splash_controller.dart';
import 'package:http_learning/Controllers/textfield_controller.dart';


class AppBinding implements Bindings{

  @override
  void dependencies() {
    Get.lazyPut(() => SignInController());
    Get.lazyPut(() => SplashCtrl());
    Get.lazyPut(() => TextFieldController());
  }
}