
import 'package:flutter/material.dart';

class AnswerOptionsComponent extends StatelessWidget {
 const AnswerOptionsComponent(
      {Key? key,
      required this.questionAnswer,
      this.onChanged,
      this.title,
      this.value})
      : super(key: key);

  final String questionAnswer;
 final  void Function(String?)? onChanged;
 final String? value;
 final String? title;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: RadioListTile(
            title: Text(title!),
            value: value!,
            groupValue: questionAnswer,
            onChanged: onChanged));
  }
}