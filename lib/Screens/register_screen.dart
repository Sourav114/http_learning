import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http_learning/Controllers/firebase_signin.dart';
import 'package:http_learning/Controllers/textfield_controller.dart';
import 'package:http_learning/Custom/custom_text.dart';
import 'package:http_learning/Custom/elevated_buttons.dart';
import 'package:http_learning/Custom/text_button.dart';
import 'package:http_learning/Custom/text_field.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final SignInController signInController = Get.find();
  final TextFieldController textFieldController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomTextButton(name: '< Back',routeAddress: '/login',),
                  const SizedBox(height: 100,),
                  const CustomText(text: 'Fill Required Credentials',size: 30,weight: FontWeight.bold,),
                  const SizedBox(height: 20,),
                  InputSpace(
                    controller: signInController.emailController,
                    iconPrefix:const Icon(Icons.email),
                    label: 'Enter email address',),
                  const SizedBox(height: 10,),
                  Obx(() => InputSpace(
                    controller: signInController.passwordController,
                    label: 'Enter password',
                    obscureText: textFieldController.getObscureValue(),
                    keyboardType: TextInputType.visiblePassword,
                    iconPrefix: const Icon(Icons.lock_outline_sharp),
                    isSuffixVisibilityOn: true,
                    onObscureChange: (x){
                      textFieldController.setObscureValue(x);
                    },
                  ),),
                  const SizedBox(height: 10,),
                  InputSpace(
                    controller: signInController.cnfPasswordController,
                    iconPrefix:const Icon(Icons.lock_outline_sharp),
                    label: 'confirm password',
                    obscureText: true,),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(
                          child:ElevatedButtons(
                            isRegisterButton: true,
                            name: "Register",
                          )
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
