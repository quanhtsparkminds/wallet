import 'package:myapp/config/env.dart';

enum Flavor {
  dev,
  stg,
  prod,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return 'Core app (dev)';
      case Flavor.stg:
        return 'Core app (stg)';
      case Flavor.prod:
        return 'Core app';
      default:
        return 'title';
    }
  }

  static String get configFileName {
    switch (appFlavor) {
      case Flavor.dev:
        return EnvFileNames.dev;
      case Flavor.stg:
        return EnvFileNames.stg;
      case Flavor.prod:
        return EnvFileNames.prod;
      default:
        return EnvFileNames.dev;
    }
  }

  static String get env {
    switch (appFlavor) {
      case Flavor.dev:
        return 'dev';
      case Flavor.stg:
        return 'staging';
      case Flavor.prod:
        return 'production';
      default:
        return 'dev';
    }
  }
}
