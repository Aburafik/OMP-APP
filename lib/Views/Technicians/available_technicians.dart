import 'package:cloud_firestore/cloud_firestore.dart';
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
  Future<QuerySnapshot<Map<String, dynamic>>> db =
      FirebaseFirestore.instance.collection('technicians').get();
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
                child: FutureBuilder<QuerySnapshot<Map<String, dynamic>>>(
                  future: db,
                  builder: (context, snapshots) {
                    if (snapshots.hasData) {
                      return ListView.builder(
                          itemCount: snapshots.data!.docs.length,
                          itemBuilder: (context, index) {
                            final data = snapshots.data!.docs[index].data();
                            return TechniciansCardComponent(
                              technicianDetails: data,
                            );
                          });
                    }

                    return const Center(
                      child: Text("Serching ..........."),
                    );
                  },
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
