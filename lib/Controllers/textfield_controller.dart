import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';



class TextFieldController extends GetxController{

  final TextEditingController textEditingController = TextEditingController();
  final obscure = true.obs;

  setObscureValue(bool value){
    obscure.value = value;
  }

  bool getObscureValue(){
    return obscure.value;
  }
}