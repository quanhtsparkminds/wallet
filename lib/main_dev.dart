import 'package:myapp/main.dart';

import 'flavors.dart';

Future<void> main() async {
  F.appFlavor = Flavor.dev;
  await runMain();
}
