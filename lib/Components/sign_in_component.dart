import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:omp_app/Components/Utils/color_themes.dart';
import 'package:omp_app/Components/Utils/constants.dart';
import 'package:omp_app/Components/custom_button.dart';
import 'package:omp_app/Components/text_form_field.dart';
import 'package:omp_app/Repository/auth_repo.dart';

class SignInFormComponent extends StatefulWidget {
  const SignInFormComponent({Key? key}) : super(key: key);

  @override
  State<SignInFormComponent> createState() => _SignInFormComponentState();
}

class _SignInFormComponentState extends State<SignInFormComponent> {
  bool isVisible = true;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  AuthUser _authUser = AuthUser();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomTextFormField(
            controller: emailController,
            hintText: "Enter email",
            hasPreffix: true,
            prefixIcon: FeatherIcons.mail,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: CustomTextFormField(
              controller: passwordController,
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
                onTap: () =>
                    Navigator.pushNamed(context, "/reset-password-view"),
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
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  startLoading();

                  await _authUser.signInUser(
                      context: context,
                      email: emailController.text,
                      password: passwordController.text);

                  stopLoading();
                }
              }),
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
      ),
    );
  }
}
