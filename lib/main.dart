import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:omp_app/Providers/user_provider.dart';
import 'package:omp_app/app.dart';
import 'package:omp_app/firebase_options.dart';
import 'package:provider/provider.dart';

import 'Providers/routing_provider.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MultiProvider(providers: [
    ListenableProvider<RoutingProvider>(create: (context) => RoutingProvider()),
    ListenableProvider<UserProvider>(create: (context) => UserProvider()),
  ], child: const MyApp()));
}
