import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:omp_app/Components/Utils/color_themes.dart';
import 'package:omp_app/Components/Utils/constants.dart';
import 'package:omp_app/Components/auth_options.dart';
import 'package:omp_app/Components/custom_button.dart';
import 'package:omp_app/Components/screen_description_text.dart';
import 'package:omp_app/Components/text_form_field.dart';
import 'package:omp_app/Repository/auth_repo.dart';

class RegisterTechnicianVC extends StatefulWidget {
  const RegisterTechnicianVC({Key? key}) : super(key: key);

  @override
  State<RegisterTechnicianVC> createState() => _RegisterTechnicianVCState();
}

class _RegisterTechnicianVCState extends State<RegisterTechnicianVC> {
  bool isVisible = true;

  final _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController installationYearController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  final AuthUser _auth = AuthUser();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        iconTheme: IconThemeData(color: GREY_COLOR_75),
      ),
      backgroundColor: const Color(0xffF4F4F4),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            ScreenDescriptionTextComponent(
              title: "Creat account",
              subtitle: "Please enter the following details",
            ),

            Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: CustomTextFormField(
                      controller: nameController,
                      hintText: "Full name",
                      hasPreffix: true,
                      prefixIcon: FeatherIcons.user,
                      errorMessage: "name can't be empty",
                    ),
                  ),
                  CustomTextFormField(
                    controller: emailController,
                    hintText: "Enter email",
                    hasPreffix: true,
                    prefixIcon: FeatherIcons.mail,
                    errorMessage: "Email can't be empty",
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: CustomTextFormField(
                      controller: locationController,
                      hintText: "Location",
                      hasPreffix: true,
                      prefixIcon: FeatherIcons.mapPin,
                      errorMessage: "Location can't be empty",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: CustomTextFormField(
                      controller: passwordController,
                      hintText: "Enter password",
                      obscureText: isVisible,
                      hasSuffix: true,
                      suffixIcon:
                          isVisible ? Icons.visibility_off : Icons.visibility,
                      hasPreffix: true,
                      prefixIcon: FeatherIcons.lock,
                      errorMessage: "Password can't be empty",
                      onPressed: () {
                        setState(
                          () {
                            isVisible = !isVisible;
                          },
                        );
                      },
                    ),
                  ),
                  CustomTextFormField(
                    controller: contactController,
                    hintText: "Contact",
                    hasPreffix: true,
                    prefixIcon: FeatherIcons.phone,
                    errorMessage: "Contact can't be empty",
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: CustomButtonComponent(
                      buttonText: "Create account",
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          startLoading();
                          await _auth.signUpTechnician(
                              context: context,
                              nameOrCompany: nameController.text,
                              email: emailController.text,
                              location: locationController.text,
                              contact: contactController.text,
                              password: passwordController.text);

                        }
                      },
                    ),
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
              ),
            ),

            AuthenticationsOptionsComponents(
              wrapperLeftText: "Already have an account?",
              wrapperRightText: "Login",
              rightWrapperTextOnTap: () => Navigator.pushNamedAndRemoveUntil(
                  context, "/sign-in-view", (route) => false),
            ),
          ],
        ),
      ),
    );
  }
}
