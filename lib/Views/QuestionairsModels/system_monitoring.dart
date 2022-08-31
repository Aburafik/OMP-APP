import 'package:flutter/material.dart';

class SystemMonitoringVC extends StatelessWidget {
  const SystemMonitoringVC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text("System Monitoring"),
      ),
    );
  }
}
