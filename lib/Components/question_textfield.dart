
    import 'package:flutter/material.dart';
import 'package:omp_app/Components/Utils/color_themes.dart';
import 'package:omp_app/Components/Utils/constants.dart';

class QuestionsTextFormField extends StatelessWidget {
  QuestionsTextFormField({Key? key, this.maxLines}) : super(key: key);

  int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
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