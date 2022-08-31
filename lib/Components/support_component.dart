import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:omp_app/Components/Utils/color_themes.dart';
import 'package:omp_app/Components/account_tile.dart';
import 'package:omp_app/Views/Profile/profile_view.dart';


class SupportComponent extends StatelessWidget {
  const SupportComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: cardDecorator(),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            AccountTileWidget(
              icon: FeatherIcons.globe,
              title: "Language",
              trailingWidget: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_circle_right, color: GREY_COLOR_20),
              ),
            ),
            AccountTileWidget(
              icon: FeatherIcons.checkSquare,
              title: "FAQs",
              trailingWidget: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_circle_right, color: GREY_COLOR_20),
              ),
            ),
            AccountTileWidget(
                icon: FeatherIcons.phoneCall,
                title: "Contact Us",
                trailingWidget: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child:
                        Icon(Icons.arrow_circle_right, color: GREY_COLOR_20))),
            AccountTileWidget(
              icon: FeatherIcons.alertCircle,
              title: "Help",
              trailingWidget: const Padding(
                padding: EdgeInsets.all(8.0),
                child:
                    const Icon(Icons.arrow_circle_right, color: GREY_COLOR_20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
