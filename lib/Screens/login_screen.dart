import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http_learning/Controllers/firebase_signin.dart';
import 'package:http_learning/Controllers/textfield_controller.dart';
import 'package:http_learning/Custom/additionalCustom/text_size.dart';
import 'package:http_learning/Custom/custom_text.dart';
import 'package:http_learning/Custom/elevated_buttons.dart';
import 'package:http_learning/Custom/text_button.dart';
import 'package:http_learning/Custom/text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final SignInController signInController = Get.find();

  final TextFieldController textFieldController = Get.put(TextFieldController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomTextButton(name: 'Skip >'),
                  ],
                ),
                const SizedBox(height: 100,),
                CustomText(text: 'Welcome Here',size: TextSize.mediumSize,weight: FontWeight.bold,),
                const SizedBox(height: 20,),
                InputSpace(
                  controller: signInController.emailController,
                  keyboardType: TextInputType.emailAddress,
                  label: 'Enter email',
                  iconPrefix: const Icon(Icons.mail_lock_outlined),
                ),
                const SizedBox(height: 20,),
                Obx(() => InputSpace(
                  controller: signInController.passwordController,
                  label: 'Enter password',
                  obscureText: textFieldController.getObscureValue(),
                  keyboardType: TextInputType.visiblePassword,
                  iconPrefix: const Icon(Icons.lock_outline_sharp),
                  isSuffixVisibilityOn: true,
                  onObscureChange: (x){textFieldController.setObscureValue(x);},
                ),),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButtons(
                        isSignInButton: true,
                        name: 'LogIn',
                        color: Colors.lightBlue,
                      ),
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomTextButton(name: 'Forgot Password?',color: Colors.grey,routeAddress: '/forgot',),
                  ],
                ),
                const SizedBox(height: 20,),
                const Row(
                  children: [
                    Expanded(child: Divider(color: Colors.grey,thickness: 1.5,)),
                    CustomText(text: 'OR',color: Colors.grey,),
                    Expanded(child: Divider(color: Colors.grey,thickness: 1.5,)),
                  ],
                ),
                const SizedBox(height: 20,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomText(text: 'Not registered?'),
                    CustomTextButton(name: 'Register Here',routeAddress: '/register',),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
