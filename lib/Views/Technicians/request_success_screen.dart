import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:omp_app/Components/Utils/color_themes.dart';
import 'package:omp_app/Components/custom_button.dart';

class RequestSuccessMessageVC extends StatelessWidget {
  const RequestSuccessMessageVC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 45,
                backgroundColor: PRIMARY_COLOR,
                child: Icon(
                  FeatherIcons.check,
                  color: WHITE_COLOR,
                  size: 50,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text("Your Request has been\n submitted succcessfully",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 20, fontWeight: FontWeight.bold)),
              ),

              // Material(
              //   shape: RoundedRectangleBorder(side: BorderSide()),

              // ),
              Text(
                "Our technicians will contact you shortly",
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 15,
              ),
              CustomButtonComponent(
                buttonText: "Back to request",
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
