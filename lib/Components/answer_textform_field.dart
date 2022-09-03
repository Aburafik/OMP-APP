
import 'package:flutter/material.dart';
import 'package:omp_app/Components/Utils/color_themes.dart';
import 'package:omp_app/Components/Utils/constants.dart';

class AnswerTextFormField extends StatelessWidget {
 AnswerTextFormField({Key? key, this.maxLines,this.controller}) : super(key: key);

  final int? maxLines;
  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller,
        maxLines: maxLines ?? 1,
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            border: outlineInputBorder,
            filled: true,
            fillColor: GREY_COLOR_20,
            focusedBorder: outlineInputBorder),
      ),
    );
  }
}
