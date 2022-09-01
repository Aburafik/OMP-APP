import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:omp_app/Components/Utils/color_themes.dart';
import 'package:omp_app/Components/custom_button.dart';
import 'package:omp_app/Components/text_form_field.dart';


class SignInFormComponent extends StatefulWidget {
  const SignInFormComponent({Key? key}) : super(key: key);

  @override
  State<SignInFormComponent> createState() => _SignInFormComponentState();
}

class _SignInFormComponentState extends State<SignInFormComponent> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CustomTextFormField(
          hintText: "Enter email",
          hasPreffix: true,
          prefixIcon: FeatherIcons.mail,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: CustomTextFormField(
            hintText: "Enter password",
            obscureText: isVisible,
            hasSuffix: true,
            suffixIcon: isVisible ? Icons.visibility_off : Icons.visibility,
            hasPreffix: true,
            prefixIcon: FeatherIcons.lock,
            onPressed: () {
              setState(() {
                isVisible = !isVisible;
              });
            },
          ),
        ),
        Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(
                  context, "/reset-password-view"),
              child: Text(
                "Forgot password?",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: PRIMARY_COLOR),
              ),
            )),
        CustomButtonComponent(
          buttonText: "Login",
          onPressed: ()=>Navigator.pushNamedAndRemoveUntil(context, "/home-page", (route) => false),
        ),
        Row(
          children: const [
            Expanded(
                child: Divider(
              thickness: 1,
            )),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("OR"),
            ),
            Expanded(
              child: Divider(
                thickness: 1,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
