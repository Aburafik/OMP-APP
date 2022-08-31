import 'package:flutter/material.dart';
import 'package:omp_app/Components/Utils/color_themes.dart';
import 'package:omp_app/Components/category_selection.dart';
import 'package:omp_app/Components/custom_button.dart';
import 'package:omp_app/Components/request_component_app_bar.dart';
import 'package:omp_app/Components/select_item.dart';
import 'package:omp_app/Views/Request/request_success_screen.dart';

class RequestVC extends StatefulWidget {
  const RequestVC({Key? key}) : super(key: key);

  @override
  State<RequestVC> createState() => _RequestVCState();
}

class _RequestVCState extends State<RequestVC> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: requestComponentAppBar(context),
      body: LayoutBuilder(
        builder: ((context, constraints) {
          return ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SelectItemTitleComponent(
                        textTitle: "Choose a Model",
                        hasIcon: false,
                      ),
                      const RequestCategorySelectionComponent(),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomButtonComponent(
                        buttonText: "Proceed to pick up",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RequestSuccessMessageVC()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

class PickUpDetailsComponent extends StatelessWidget {
  const PickUpDetailsComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ExpansionTile(
      title: Text("Details"),
      backgroundColor: WHITE_COLOR,
      tilePadding: EdgeInsets.symmetric(horizontal: 10),
      collapsedBackgroundColor: WHITE_COLOR,
      children: [
        TextField(
          decoration: InputDecoration(
            labelText: "Description",
          ),
        )
      ],
    );
  }
}
