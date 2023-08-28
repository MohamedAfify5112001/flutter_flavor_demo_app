import 'package:flutter/material.dart';

import 'config/flavor_config.dart';
import 'flavor_screen/flavor_screen.dart';

void main() {
  FlavorConfig.appFlavor = Flavor.dev;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: const FlavorScreen(),
    );
  }
}
