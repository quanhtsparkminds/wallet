import 'package:myapp/domain/repositories/user_repo.dart';
import 'package:myapp/shared/helps/spref.dart';
import 'package:myapp/shared/mixins/get_infomation_device.dart';

class Application {
  late UserRepository userRepository;

  Application();

  setup() async {
    await SPref.init();
    // initSQLLite();
    getInfoDevice();
    await setupRepositories();
  }

  setupRepositories() async {
    userRepository = UserRepository();
  }
}
