import 'package:myapp/shared/utils/my_logger.dart';

import 'base_command.dart';

class NavigateBackCommand extends BaseAppCommand {
  Future<void> run() async {
    MyLogger.safePrint(
        'NavigateBackCommand -- ${mainAppState.currentPage.pageTree}');
    if (mainAppState.currentPage.pageTree.length > 1) {
      mainAppState.currentPage = mainAppState
          .currentPage.pageTree[mainAppState.currentPage.pageTree.length - 2];
    }
  }
}
