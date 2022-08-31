import 'package:flutter/material.dart';
import 'package:omp_app/Components/Utils/color_themes.dart';

AppBar requestComponentAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    elevation: 0,
    title: Text(
      "Request",
      style: Theme.of(context).textTheme.bodyText1!.copyWith(
            color: GREY_COLOR_75,
            fontSize: 20,
          ),
    ),
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(15),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Wrap(
              children: [
                const Text("Address:"),
                Text(
                  "Kasoa, Nyanyano Street",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(),
                ),
              ],
            ),
            Text(
              "Change",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: PRIMARY_COLOR,
                  ),
            )
          ],
        ),
      ),
    ),
  );
}
