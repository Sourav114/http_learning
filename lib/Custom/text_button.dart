import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class CustomTextButton extends StatelessWidget {

  final String name;
  final Color? color;
  final String? routeAddress;

  const CustomTextButton({super.key,required this.name,this.color,this.routeAddress});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: (){
          if (routeAddress != null) {
            Get.offNamed(routeAddress!); // Navigate to the specified route
          }
        },
        child: Text(name,style: TextStyle(color: color),));
  }
}
