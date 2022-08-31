import 'package:flutter/material.dart';
import 'package:omp_app/Components/custom_button.dart';
import 'package:omp_app/Components/screen_description_text.dart';


class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/Mail-bro.png"),
            ScreenDescriptionTextComponent(
              title: "Nothing to see yet!",
              subtitle:
                  "We will notifu you when we have news to share about your request",
            ),
            CustomButtonComponent(
              buttonText: "Back to Home",
            )
          ],
        ),
      ),
    );
  }
}
