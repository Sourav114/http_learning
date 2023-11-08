import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http_learning/Controllers/bindingControllers/app_binding.dart';
import 'package:http_learning/Utils/Routing/routes.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AppBinding(),
      debugShowCheckedModeBanner: false,
      getPages: Routes.appRoutes(),
      initialRoute: "/splash",
      );
  }
}
