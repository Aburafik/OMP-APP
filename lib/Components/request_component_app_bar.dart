import 'package:flutter/material.dart';
import 'package:omp_app/Components/Utils/color_themes.dart';

AppBar requestComponentAppBar(BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    // elevation: 0,
    title: Text(
      "Available technicians",
      style: Theme.of(context).textTheme.bodyText1!.copyWith(
            color: GREY_COLOR_75,
            fontSize: 20,
          ),
    ),
    
  );
}
