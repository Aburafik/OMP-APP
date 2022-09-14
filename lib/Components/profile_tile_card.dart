import 'package:flutter/material.dart';
import 'package:omp_app/Components/Utils/color_themes.dart';

class ProfieCardTile extends StatelessWidget {
  ProfieCardTile({Key? key, this.icon, this.title}) : super(key: key);

  IconData? icon;
  String? title;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: GREY_COLOR_20,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Icon(icon),
        title: Text(title!),
      ),
    );
  }
}
