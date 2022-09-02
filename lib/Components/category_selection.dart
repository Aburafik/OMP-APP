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
          selectedModelRoute(index, context);
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
                  textAlign: TextAlign.center,
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
    "name": "General Maintenance",
    "image": FontAwesomeIcons.glassWaterDroplet,
  },
  {
    "name": "PV Models",
    "image": FontAwesomeIcons.paperPlane,
  },
  {
    "name": "PV Array",
    "image": FontAwesomeIcons.whiskeyGlass,
  },
  {
    "name": "Inverters",
    "image": FontAwesomeIcons.weightHanging,
  },
  {
    "name": "System Monitoring",
    "image": FontAwesomeIcons.box,
  },
  {
    "name": "Battery System (Off-Grid)",
    "image": FeatherIcons.battery,
  },
  {
    "name": "DC and AC Slide of System",
    "image": FontAwesomeIcons.line,
  },
  {
    "name": "Isolation Transformer and System Test",
    "image": FeatherIcons.box,
  },
  {
    "name": "Earthing and Lightning Protection System",
    "image": FontAwesomeIcons.question,
  },
];

selectedModelRoute(index, BuildContext context) {
  switch (index) {
    case 0:
      return Navigator.pushNamed(context, "/general-maintenance-page");
    case 1:
      return Navigator.pushNamed(context, "/pv-models-page");

    case 2:
      return Navigator.pushNamed(context, "/pv-array-page");
    case 3:
      return Navigator.pushNamed(context, "/inverters-page");
    case 4:
      return Navigator.pushNamed(context, "/system-monitoring-page");
    case 6:
      return Navigator.pushNamed(context, "/dc-ac-page");
    case 5:
      return Navigator.pushNamed(context, "/battery-system-page");
    case 7:
      return Navigator.pushNamed(context, "/isolation-transformer-system-page");
    case 8:
      return Navigator.pushNamed(context, "/earthing-Lightening-page");
    default:
  }
}

// "/earthing-Lightening-page"