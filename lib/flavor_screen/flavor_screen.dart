import 'package:flutter/material.dart';

import '../config/flavor_config.dart';

class FlavorScreen extends StatelessWidget {
  const FlavorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            FlavorConfig.appFlavor == Flavor.dev ? Colors.red : Colors.purple,
        title: Text(
          FlavorConfig.appFlavor == Flavor.dev
              ? 'Development Flavor'
              : 'Production Flavor',
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: Colors.white, fontSize: 28.0),
        ),
      ),
      body: Center(
        child: Text(
          textAlign: TextAlign.center,
          FlavorConfig.appFlavor == Flavor.dev
              ? 'Hello Development Flavor'
              : 'Hello Production Flavor',
          style: Theme.of(context)
              .textTheme
              .headlineLarge
              ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black87),
        ),
      ),
    );
  }
}
