import 'package:flutter/material.dart';
import 'package:omp_app/Components/Utils/constants.dart';
import 'package:omp_app/Components/nav_bar_component.dart';
import 'package:omp_app/Providers/routing_provider.dart';
import 'package:provider/provider.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RoutingProvider routingProvider =
        Provider.of<RoutingProvider>(context, listen: true);
    return Scaffold(
      body: IndexedStack(
        index: routingProvider.currentIndex,
        children: pages,
      ),
      bottomNavigationBar: const NavBarMenuComponent(),
    );
  }
}
