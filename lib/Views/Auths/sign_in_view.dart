import 'package:flutter/material.dart';
import 'package:omp_app/Components/Utils/constants.dart';
import 'package:omp_app/Components/auth_options.dart';
import 'package:omp_app/Components/screen_description_text.dart';
import 'package:omp_app/Components/sign_in_component.dart';

class SignInVC extends StatelessWidget {
  const SignInVC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F4F4),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Padding(
                padding: const EdgeInsets.all(50.0), child: appLogo(context)),
            ScreenDescriptionTextComponent(
              title: "Welcome Back",
              subtitle: "Please login to continue",
            ),
            const SignInFormComponent(),
            AuthenticationsOptionsComponents(
              wrapperLeftText: "Not a member?",
              wrapperRightText: "Create account",
              rightWrapperTextOnTap: () => Navigator.pushNamed(
                context,
                "/registration-decide",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
