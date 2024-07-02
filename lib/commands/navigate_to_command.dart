import 'package:myapp/routing/page_configuration.dart';
import 'package:myapp/shared/utils/my_logger.dart';

import 'base_command.dart';

class NavigateToCommand extends BaseAppCommand {
  Future<void> run(PageConfiguration pageConfiguration) async {
    MyLogger.safePrint('NavigateToCommand: $pageConfiguration');
    // Update appController with new user. If user is null, this acts as a logout command.
    mainAppState.currentPage = pageConfiguration;
  }
}
