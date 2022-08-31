import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:omp_app/Components/Utils/color_themes.dart';

class RegistrationDecideVC extends StatelessWidget {
  const RegistrationDecideVC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Register as a..",
            style:
                Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 18)),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            UserAuthTypeCard(
              icon: FeatherIcons.users,
              title: "Customer",
              onTap: () => Navigator.pushNamed(context, "/sign-up-view"),
            ),
            UserAuthTypeCard(
              icon: FeatherIcons.user,
              title: "Technician",
              onTap: () => Navigator.pushNamed(context, "/register-technician"),
            ),
          ],
        ),
      ),
    );
  }
} //"/register-technician"

class UserAuthTypeCard extends StatelessWidget {
  UserAuthTypeCard({
    Key? key,
    this.onTap,
    this.title,
    this.icon,
  }) : super(key: key);

  final String? title;
  Function()? onTap;
  IconData? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                icon,
                color: PRIMARY_COLOR,
                size: 45,
              ),
              SizedBox(height: 20),
              Text(
                title!,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
