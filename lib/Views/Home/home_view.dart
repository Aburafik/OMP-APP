import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:omp_app/Components/Utils/color_themes.dart';
import 'package:omp_app/Components/category_selection.dart';
import 'package:omp_app/Components/home_app_bar.dart';
import 'package:omp_app/Components/protect_environment.dart';
import 'package:omp_app/Components/select_item.dart';

class HomeVC extends StatelessWidget {
  const HomeVC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: ((context, constraints) {
          return ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 15),
                    const HomeAppBarComponent(),


                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 3.5,
                              child:
                                  const EnvironmentProtectionTipsCarouselComponent(),
                            ),
                            SelectItemTitleComponent(
                              textTitle: "Choose a Model",
                              hasIcon: false,
                            ),
                            const RequestCategorySelectionComponent(),
                          ],
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

class TechniciansCardComponent extends StatelessWidget {
  TechniciansCardComponent({Key? key, this.technicianDetails})
      : super(key: key);

  dynamic technicianDetails;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(5),
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(5),
            width: 60,
            decoration: BoxDecoration(
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1600180758890-6b94519a8ba6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZmlsZSUyMHBob3RvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60"),
                ),
                borderRadius: BorderRadius.circular(10),
                color: Colors.green),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(technicianDetails['full_name'],
                            style: Theme.of(context).textTheme.bodyText1),
                        const SizedBox(height: 10),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            const Icon(Icons.location_on, color: Colors.yellow),
                            Text(technicianDetails['location'])
                          ],
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        // const Text("Last active"),
                        IconButton(
                          onPressed: () {
                            ///add technician Contact here
                          },
                          icon: const Icon(FeatherIcons.phoneCall,
                              color: PRIMARY_COLOR),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
