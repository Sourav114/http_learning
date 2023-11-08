import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http_learning/Controllers/firebase_signin.dart';


class ElevatedButtons extends StatelessWidget {

  final String name;
  final  Color? color;
  final String? routeAddress;
  final bool? isSignInButton;
  final bool? isRegisterButton;
  final bool? isSignOutButton;
  final bool? isPasswordChangeButton;

  ElevatedButtons({
    super.key,
    required this.name,
    this.color,
    this.routeAddress,
    this.isSignInButton,
    this.isRegisterButton,
    this.isSignOutButton,
    this.isPasswordChangeButton
  });

  final SignInController controller = Get.put(SignInController());


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed:(){
          if(isSignInButton==true){
            controller.signIn();
          }
          else if(isRegisterButton==true){
            controller.signUp();
          }
          else if(isSignOutButton==true){
            controller.signOut();
          }
          else if(isPasswordChangeButton==true){
            controller.forgetPassword();
          }
        },
        child: Text(name));
  }
}
