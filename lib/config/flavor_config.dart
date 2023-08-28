enum Flavor {
  dev,
  prod,
}

class FlavorConfig {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title => switch (appFlavor) {
        Flavor.dev => 'Development Flavor',
        Flavor.prod => 'Production Flavor',
        _ => 'Unknown',
      };
}
