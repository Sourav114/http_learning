import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final cnfPasswordController = TextEditingController();


  Future signIn() async {
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
      Get.offNamed("/home");
    }
    on FirebaseAuthException catch(e){
      showMessageDialog(e.message.toString());
    }

    emailController.clear();
    passwordController.clear();
  }

  //For saving the data.

  // Future registerUser() async{
  //   CollectionReference collRef = FirebaseFirestore.instance.collection('dummy');
  //   collRef.add(
  //       {
  //         'email':emailController.text,
  //         'password':passwordController.text,
  //       }
  //   );
  //   Get.offNamed('/login');
  //   emailController.clear();
  //   passwordController.clear();
  // }

  //For SignUp

  Future signUp() async {
    if (passwordController.text.trim() == cnfPasswordController.text.trim()) {
      _showSnackBar('Successfully Registered');
      FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text, password: cnfPasswordController.text);

      Get.offNamed("/login");

      emailController.clear();
      passwordController.clear();
      cnfPasswordController.clear();
    } else {
      _showSnackBar('password mismatch');
    }
  }

  //For SignOut

  Future signOut() async {
    FirebaseAuth.instance.signOut();
    Get.offNamed('/login');
  }

  //Forget Password

  Future forgetPassword() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emailController.text.trim());
      showMessageDialog('Password reset link sent! Kindly Check your email');
    } on FirebaseAuthException catch (e) {
      showMessageDialog(e.message.toString());
    }
    Future.delayed(const Duration(seconds: 3),(){
      Get.offNamed('/login');
    });
    emailController.clear();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    cnfPasswordController.dispose();
    super.dispose();
  }

  void _showSnackBar(String message) {
    final context = Get.context;
    if (context != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          duration: const Duration(seconds: 3),
        ),
      );
    }
  }

  // void _showErrorSnackBar(String message) {
  //   final context = Get.context;
  //   if (context != null) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(
  //         content: Text(message),
  //         duration: const Duration(seconds: 3),
  //       ),
  //     );
  //   }
  // }

  void showMessageDialog(String message) {
    final context = Get.context;
    if (context != null) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(message),
          );
        },
      );
    }
  }
}
