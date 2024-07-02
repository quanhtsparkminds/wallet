import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class MyLogger {
  MyLogger();

  static void e(dynamic msg) {
    debugPrint('MyLogger: $msg');
  }

  static void d(dynamic msg) {
    debugPrint('MyLogger: $msg');
  }


  static void safePrint(String value) {
    if (kReleaseMode) return;
    print('MyLogger:$value');
  }

}
