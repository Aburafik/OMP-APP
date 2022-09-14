import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:omp_app/Components/Utils/color_themes.dart';
import 'package:omp_app/Components/Utils/constants.dart';
import 'package:omp_app/Components/custom_button.dart';
import 'package:omp_app/Components/profile_tile_card.dart';
import 'package:omp_app/Providers/user_provider.dart';
import 'package:omp_app/Repository/auth_repo.dart';
import 'package:provider/provider.dart';

class ProfileVC extends StatelessWidget {
  ProfileVC({Key? key}) : super(key: key);
  final AuthUser _authUser = AuthUser();

  @override
  Widget build(BuildContext context) {
    UserProvider userProvider =
        Provider.of<UserProvider>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          "Profile",
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: GREY_COLOR_75,
                fontSize: 20,
              ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundColor: GREY_COLOR_20,
              child: Icon(
                FeatherIcons.user,
                size: 50,
                color: GREY_COLOR_50,
              ),
            ),
            ProfieCardTile(
              title: userProvider.userData['full_name'],
              icon: FeatherIcons.user,
            ),
            ProfieCardTile(
              title: userProvider.userData['email'],
              icon: FeatherIcons.mail,
            ),
            ProfieCardTile(
              title: userProvider.userData['location'],
              icon: FeatherIcons.mapPin,
            ),
            ProfieCardTile(
              title: userProvider.userData['account_type'],
              icon: Icons.work,
            ),
            CustomButtonComponent(
                buttonText: "Update Profile",
                onPressed: () => showToast(
                    msg: "Profile can't be updated.", color: Colors.red)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.logout),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      _authUser.signOutUser(context: context);
                      // routingProvider.nextPage(0);
                    },
                    child: Text("SignOut",
                        style: Theme.of(context)
                            .textTheme
                            .headline2!
                            .copyWith(fontSize: 16)),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                moreText(text: "About Us", context: context),
                const SizedBox(width: 10),
                moreText(text: "Privacy Policy", context: context),
                const SizedBox(width: 10),
                moreText(text: "Terms Of Use", context: context),
              ],
            )
          ],
        ),
      ),
    );
  }

  Text moreText({String? text, BuildContext? context}) => Text(
        text!,
        style: Theme.of(context!).textTheme.headline2!.copyWith(fontSize: 16),
      );
}
