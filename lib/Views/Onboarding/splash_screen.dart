import 'dart:async';

import 'package:delayed_display/delayed_display.dart';
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
      const Duration(seconds: 5),
      () => Navigator.pushNamedAndRemoveUntil(
          context, "/onboarding-view", (route) => false),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WHITE_COLOR,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DelayedDisplay(
              delay: const Duration(seconds: 0),
              child: appLogo(context),
            ),
            const SizedBox(height: 20),
            DelayedDisplay(
              delay: const Duration(seconds: 2),
              slidingBeginOffset: const Offset(-3, 0.00),
              child: Text(
                "Operation Maintenance Protocol",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontStyle: FontStyle.italic,
                      color: PRIMARY_COLOR,
                    ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
