
import 'package:flutter/material.dart';

class InputSpace extends StatelessWidget {

  final String? hintText;
  final Color? hintTextColor;
  final Color? suffixIconColor;
  final String? label;
  final TextInputType keyboardType;
  final bool obscureText;
  final Icon? iconPrefix;
  final bool isSuffixVisibilityOn;
  final Function(bool obscureVisibility)? onObscureChange;
  final TextEditingController? controller;
  final void Function(String)? onChanged;


  const InputSpace(
      {super.key,
        this.hintText,
        this.hintTextColor,
        this.suffixIconColor,
        this.label,
        this.keyboardType = TextInputType.text,
        this.obscureText=false,
        this.iconPrefix,
        this.isSuffixVisibilityOn = false,
        this.onObscureChange,
        this.controller,
        this.onChanged
      });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      obscuringCharacter: '*',
      decoration: InputDecoration(
        prefixIcon: iconPrefix,
        suffixIcon: !isSuffixVisibilityOn
            ?null
            :InkWell(
              child: Icon(obscureText?Icons.visibility_off:Icons.visibility),
              onTap: () {
                debugPrint(obscureText.toString());
                if (onObscureChange != null) {
                  onObscureChange!(!obscureText);
            }
          },
        ),
        hintText: hintText,
        labelText: label,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey), // Customize the border
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue), // Customize the border when focused
        ),
      ),
    );
  }
}
