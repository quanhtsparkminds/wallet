
import 'package:myapp/shared/utils/easy_notifier.dart';

abstract class AbstractModel extends EasyNotifier {}

// * Make sure file is cleared when we logout (ChangeUserCommand)
class MainLoginState extends AbstractModel {
  MainLoginState();

  String? _verificationId;

  String? get verificationId => _verificationId;

  set verificationId(String? verificationId) {
    _verificationId = verificationId;
    if (_verificationId == null) {
      reset();
    }
    notify();
  }

  void reset() {}

  load() async {}
}
