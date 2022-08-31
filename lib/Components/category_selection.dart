import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:omp_app/Components/Utils/color_themes.dart';

class RequestCategorySelectionComponent extends StatefulWidget {
  const RequestCategorySelectionComponent({
    Key? key,
  }) : super(key: key);

  @override
  State<RequestCategorySelectionComponent> createState() =>
      _RequestCategorySelectionComponentState();
}

class _RequestCategorySelectionComponentState
    extends State<RequestCategorySelectionComponent> {
  int? selectedCard;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          // childAspectRatio: 1.3,
          mainAxisExtent: 100,
          crossAxisCount: 3),
      itemCount: wasteType.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          setState(() {
            selectedCard = index;
          });
        },
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: selectedCard == index ? SECONDARY_COLOR : Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(wasteType[index]['image'], color: PRIMARY_COLOR),
              Text(wasteType[index]['name'],
                  style: const TextStyle(color: PRIMARY_COLOR)),
            ],
          ),
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> wasteType = [
  {
    "name": "Plastic",
    "image": FontAwesomeIcons.glassWaterDroplet,
  },
  {
    "name": "Paper",
    "image": FontAwesomeIcons.paperPlane,
  },
  {
    "name": "Glass",
    "image": FontAwesomeIcons.whiskeyGlass,
  },
  {
    "name": "Metal",
    "image": FontAwesomeIcons.weightHanging,
  },
  {
    "name": "Cardboard",
    "image": FontAwesomeIcons.box,
  },
  {
    "name": "Electronics",
    "image": FeatherIcons.radio,
  },
  {
    "name": "Cans",
    "image": FeatherIcons.box,
  },
  {
    "name": "Other",
    "image": FontAwesomeIcons.question,
  },
];
