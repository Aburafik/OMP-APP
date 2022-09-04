import 'package:flutter/material.dart';
import 'package:omp_app/Components/Utils/color_themes.dart';
import 'package:omp_app/Components/custom_button.dart';
import 'package:omp_app/Components/user_profile_component.dart';
import 'package:omp_app/Providers/routing_provider.dart';
import 'package:omp_app/Repository/auth_repo.dart';
import 'package:provider/provider.dart';

class ProfileVC extends StatelessWidget {
  ProfileVC({Key? key}) : super(key: key);
  AuthUser _authUser = AuthUser();

  @override
  Widget build(BuildContext context) {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const UserProfileComponent(),
            Text(
              "My Account",
              style:
                  Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 18),
            ),
            // const MyAccountComponent(),

            CustomButtonComponent(
              buttonText: "Update Profile",
              onPressed: () => Navigator.pop(context),
            ),
            // const SupportComponent(),
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
                SizedBox(width: 10),
                moreText(text: "Privacy Policy", context: context),
                SizedBox(width: 10),
                moreText(text: "Terms Of Use", context: context),
              ],
            )
          ],
        ),
      ),
    );
  }

  Text moreText({String, text, BuildContext? context}) => Text(
        text!,
        style: Theme.of(context!).textTheme.headline2!.copyWith(fontSize: 16),
      );
}

RoundedRectangleBorder cardDecorator() =>
    RoundedRectangleBorder(borderRadius: BorderRadius.circular(10));
