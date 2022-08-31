import 'package:flutter/material.dart';
import 'package:omp_app/Components/request_component_app_bar.dart';
import 'package:omp_app/Views/Home/home_view.dart';

class AvailableTechniciansVC extends StatefulWidget {
  const AvailableTechniciansVC({Key? key}) : super(key: key);

  @override
  State<AvailableTechniciansVC> createState() => _AvailableTechniciansVCState();
}

class _AvailableTechniciansVCState extends State<AvailableTechniciansVC> {
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
                    children: const [
                      TopUsersDisplayComponent(),
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
