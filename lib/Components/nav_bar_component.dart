import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:omp_app/Providers/routing_provider.dart';
import 'package:omp_app/Providers/user_provider.dart';
import 'package:provider/provider.dart';

import 'Utils/color_themes.dart';

class NavBarMenuComponent extends StatelessWidget {
  const NavBarMenuComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RoutingProvider routingProvider = Provider.of<RoutingProvider>(context);
    UserProvider userProvider =
        Provider.of<UserProvider>(context, listen: true);
    String accountType = userProvider.userData['account_type'];
    return BottomNavigationBar(
      selectedItemColor: PRIMARY_COLOR,
      unselectedItemColor: GREY_COLOR_20,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      currentIndex: routingProvider.currentIndex,
      onTap: routingProvider.nextPage,
      items: accountType == "Technician"
          ? const [
              BottomNavigationBarItem(
                label: "Home",
                icon: Icon(
                  FeatherIcons.home,
                ),
              ),
              BottomNavigationBarItem(
                label: "Requests",
                icon: Icon(
                  FeatherIcons.printer,
                ),
              ),
              BottomNavigationBarItem(
                label: "Profile",
                icon: Icon(
                  FeatherIcons.user,
                ),
              ),
            ]
          : const [
              BottomNavigationBarItem(
                label: "Home",
                icon: Icon(
                  FeatherIcons.home,
                ),
              ),
              BottomNavigationBarItem(
                label: "My History",
                icon: Icon(
                  FeatherIcons.printer,
                ),
              ),
              BottomNavigationBarItem(
                label: "Technicians",
                icon: Icon(
                  FeatherIcons.plusSquare,
                ),
              ),
              BottomNavigationBarItem(
                label: "Profile",
                icon: Icon(
                  FeatherIcons.user,
                ),
              ),
            ],
    );
  }
}
