import 'package:flutter/material.dart';
import 'package:omp_app/Components/Utils/color_themes.dart';

class SelectItemTitleComponent extends StatelessWidget {
  SelectItemTitleComponent(
      {Key? key, this.onTap, this.textTitle, this.hasIcon = true})
      : super(key: key);
  Function()? onTap;
  String? textTitle;
  bool? hasIcon = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: InkWell(
          onTap: onTap,
          child: Material(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: WHITE_COLOR,
            child: Padding(
              padding:const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(textTitle!),
                  hasIcon! ? const Icon(Icons.arrow_drop_down) : Wrap(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
