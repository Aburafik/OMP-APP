import 'package:flutter/material.dart';
import 'package:omp_app/Components/Utils/color_themes.dart';

class ScreenDescriptionTextComponent extends StatelessWidget {
  ScreenDescriptionTextComponent({Key? key, this.subtitle, this.title})
      : super(key: key);
  String? title;
  String? subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title!,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            subtitle!,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(color: GREY_COLOR_75),
          ),
        ],
      ),
    );
  }
}
