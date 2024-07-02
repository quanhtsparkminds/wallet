import 'dart:async';

import 'package:myapp/shared/utils/easy_notifier.dart';

abstract class AbstractModel extends EasyNotifier {}

class NetworkState extends AbstractModel {
  NetworkState();

  final StreamController<bool> counterController =  StreamController<bool>();
  Stream get counterStream => counterController.stream;

  void dispose() {
    super.dispose();
    counterController.close();
  }

  bool _hasConnection = false;

  set hasConnection(bool value) {
    if (_hasConnection != value) {
      _hasConnection = value;
      counterController.sink.add(hasConnection);
      notify();
    }
  }

  bool get hasConnection => _hasConnection;
}
