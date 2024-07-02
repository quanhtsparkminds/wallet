import 'base_command.dart';

class SetNetworkCommand extends BaseAppCommand {
  run(bool value) async {
    networkState.hasConnection = value;
  }

  bool get() {
    return networkState.hasConnection;
  }
}
