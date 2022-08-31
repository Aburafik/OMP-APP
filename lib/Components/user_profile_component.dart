import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:omp_app/Views/Profile/profile_view.dart';

class UserProfileComponent extends StatelessWidget {
  const UserProfileComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: cardDecorator(),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListTile(
          horizontalTitleGap: 0,
          contentPadding: const EdgeInsets.symmetric(horizontal: 0),
          leading: const CircleAvatar(radius: 40),
          title: const Text("CitizenRaf"),
          subtitle: const Text("Citizen@gmail.com"),
          trailing: Column(
            children: [
              InkWell(
                child: const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(FeatherIcons.edit),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
