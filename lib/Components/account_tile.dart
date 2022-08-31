import 'package:flutter/material.dart';
import 'package:omp_app/Components/Utils/color_themes.dart';

class AccountTileWidget extends StatelessWidget {
  const AccountTileWidget({Key? key, this.icon, this.title, this.trailingWidget})
      : super(key: key);

  final String? title;

  final IconData? icon;
  final Widget? trailingWidget;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: GREY_COLOR_75,
              size: 18,
            ),
            const SizedBox(width: 10),
            Text(
              title!,
              style:
                  Theme.of(context).textTheme.headline3!.copyWith(fontSize: 18),
            ),
          ],
        ),
        trailingWidget!
      ],
    );
  }
}
