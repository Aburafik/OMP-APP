import 'package:flutter/material.dart';
import 'package:omp_app/Components/Utils/color_themes.dart';

class AuthenticationsOptionsComponents extends StatelessWidget {
  const AuthenticationsOptionsComponents({
    Key? key,
    this.wrapperLeftText,
    this.wrapperRightText,
    this.rightWrapperTextOnTap,
  }) : super(key: key);


  final String? wrapperLeftText;
  final String? wrapperRightText;
  final Function()? rightWrapperTextOnTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          alignment: WrapAlignment.center,
          children: [
            Text(
              wrapperLeftText!,
              style: Theme.of(context).textTheme.bodyText2,
            ),
            InkWell(
              onTap: rightWrapperTextOnTap,
              child: Text(
                wrapperRightText!,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: PRIMARY_COLOR),
              ),
            )
          ],
        ),
      ],
    );
  }
}
