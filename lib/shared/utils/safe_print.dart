import 'package:flutter/foundation.dart';

void safePrintForRelease(String value) {
  if (kReleaseMode) return;
  print(value);
}
