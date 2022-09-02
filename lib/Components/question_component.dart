import 'package:flutter/material.dart';
import 'package:omp_app/Components/Utils/color_themes.dart';

class QuestionComponent extends StatelessWidget {
  QuestionComponent({Key? key, this.question}) : super(key: key);

  String? question;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        question!,
        style: Theme.of(context)
            .textTheme
            .headline5!
            .copyWith(fontSize: 16, color: BLACK_COLOR),
      ),
    );
  }
}
