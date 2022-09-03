import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:omp_app/Components/Utils/color_themes.dart';
import 'package:omp_app/Components/account_tile.dart';
import 'package:omp_app/Views/Profile/profile_view.dart';


class MyAccountComponent extends StatelessWidget {
  const MyAccountComponent({
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
              icon: FeatherIcons.bell,
              title: "Notification",
              trailingWidget: Switch(value: true, onChanged: (value) {}),
            ),
            AccountTileWidget(
              icon: FeatherIcons.mapPin,
              title: "Tasks Remainder",
              trailingWidget: Switch(value: true, onChanged: (value) {}),
            ),
            // ignore: prefer_const_constructors
            AccountTileWidget(
                icon: FontAwesomeIcons.addressCard,
                title: "Address",
                trailingWidget: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.arrow_circle_right, color: GREY_COLOR_20),
                )),
            const AccountTileWidget(
              icon: FontAwesomeIcons.addressCard,
              title: "Payment",
              trailingWidget: Padding(
                padding: EdgeInsets.all(8.0),
                child:
                     Icon(Icons.arrow_circle_right, color: GREY_COLOR_20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
