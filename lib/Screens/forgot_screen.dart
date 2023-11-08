import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http_learning/Controllers/firebase_signin.dart';
import 'package:http_learning/Custom/additionalCustom/text_size.dart';
import 'package:http_learning/Custom/custom_text.dart';
import 'package:http_learning/Custom/elevated_buttons.dart';
import 'package:http_learning/Custom/text_button.dart';
import 'package:http_learning/Custom/text_field.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({super.key});

  final SignInController signInController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CustomTextButton(name: '< Back',routeAddress: '/login',),
                  SizedBox(height: TextSize.largeSize,),
                  const CustomText(
                    text: 'Password Change',
                    size: 30,weight: FontWeight.bold,
                  ),
                  const SizedBox(height: 20,),
                  InputSpace(
                    controller: signInController.emailController,
                    iconPrefix: const Icon(Icons.email),
                    label: "Enter registered email",
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(
                          child: ElevatedButtons(
                            isPasswordChangeButton: true,
                            name: 'Send link',

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
