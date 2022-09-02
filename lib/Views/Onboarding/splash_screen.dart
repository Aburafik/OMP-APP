import 'dart:async';

import 'package:flutter/material.dart';
import 'package:omp_app/Components/Utils/color_themes.dart';
import 'package:omp_app/Components/Utils/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 5),
        () => Navigator.pushNamedAndRemoveUntil(
            context, "/onboarding-view", (route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WHITE_COLOR,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            appLogo(context),
            SizedBox(height: 20),
            Text("Operation Maintenance Protocol",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontStyle: FontStyle.italic,
                      color: PRIMARY_COLOR,
                    ))
          ],
        ),
      ),
    );
  }


}
