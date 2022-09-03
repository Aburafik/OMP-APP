import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:omp_app/Components/Utils/color_themes.dart';
import 'package:omp_app/Providers/user_provider.dart';
import 'package:provider/provider.dart';

class HomeAppBarComponent extends StatelessWidget {
  const HomeAppBarComponent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    UserProvider userProvider =
        Provider.of<UserProvider>(context, listen: true);

    userProvider.userData['location'];

    return Column(
      children: [
        Row(
          children: [
            const Icon(
              FeatherIcons.mapPin,
              size: 15,
              color: GREY_COLOR_50,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              userProvider.userData['location'],
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(color: GREY_COLOR_50),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Hi, ${userProvider.userData['full_name']}",
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(FeatherIcons.bell),
            )
          ],
        )
      ],
    );
  }
}
