import 'package:flutter/material.dart';

class AnswerOptionsComponent extends StatelessWidget {
  AnswerOptionsComponent(
      {Key? key,
      required this.questionAnswer,
      this.onChanged,
      this.title,
      this.value})
      : super(key: key);

  final String questionAnswer;
  void Function(String?)? onChanged;
  String? value;
  String? title;
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
