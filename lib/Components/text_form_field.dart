import 'package:flutter/material.dart';
import 'package:omp_app/Components/Utils/color_themes.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    Key? key,
    this.hintText,
    this.hasPreffix = false,
    this.prefixIcon,
    this.suffixIcon,
    this.hasSuffix = false,
    this.obscureText = false,
    this.controller,
    this.errorMessage,
    this.onPressed,
  }) : super(key: key);
  String? hintText;
  IconData? prefixIcon;
  IconData? suffixIcon;
  bool hasPreffix = false;
  bool hasSuffix = false;
  bool obscureText = false;
  void Function()? onPressed;
  TextEditingController? controller;
  String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      cursorColor: GREY_COLOR_50,
      validator: (value) {
        if (value!.isEmpty) {
          return errorMessage;
        }
        
        return null;
      },
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: hasPreffix
            ? Icon(
                prefixIcon,
                color: GREY_COLOR_20,
              )
            : null,
        suffixIcon: hasSuffix
            ? IconButton(
                splashColor: WHITE_COLOR,
                onPressed: onPressed,
                icon: Icon(
                  suffixIcon,
                  color: GREY_COLOR_20,
                ),
              )
            : null,
        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 3),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: GREY_COLOR_20),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: GREY_COLOR_75),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
