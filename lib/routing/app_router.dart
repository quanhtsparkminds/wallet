import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myapp/feature/authentication/signin/login_page.dart';
import 'package:myapp/feature/dashboard/dashboard_page.dart';
import 'package:myapp/feature/flash/flash_view.dart';
import 'package:myapp/model/main_app_state.dart';
import 'package:myapp/routing/page_configuration.dart';
import 'package:myapp/routing/page_configuration/authen_page_configuration.dart';
import 'package:myapp/shared/utils/safe_print.dart';
import '../config/main_app_scaffold.dart';

class AppRouterDelegate extends RouterDelegate<PageConfiguration>
    with ChangeNotifier {
  final MainAppState mainAppState;
  AppRouterDelegate(this.mainAppState) {
    mainAppState.addListener(notifyListeners);
  }

  @override
  void dispose() {
    mainAppState.removeListener(notifyListeners);
    super.dispose();
  }

  @override
  PageConfiguration get currentConfiguration => mainAppState.currentPage;

  @override
  Widget build(BuildContext context) {
    safePrintForRelease('RouterDelegate.build()');
    // Bind to the app state we care about
    bool hasBootstrapped = mainAppState.hasBootstrapped;
    bool hasSetInitialRoute = mainAppState.hasSetInitialRoute;
    bool showSplash = hasBootstrapped == false || hasSetInitialRoute == false;
    // Wrap
    return MainAppScaffold(
      child: Navigator(
        onPopPage: _handleNavigatorPop,
        pages: [
          if (showSplash) ...[
            _wrapContentInPage(const FlashScreen()),
          ] else ...[
            ..._buildPageList(context)
          ]
        ],
      ),
    );
  }

  List<Page> _buildPageList(BuildContext context) {
    switch (currentConfiguration.runtimeType) {
      case LoginPageConfiguration:
        return [_createContentInPage(const LoginPage(), currentConfiguration)];
      default:
        return [
          _createContentInPage(const DashboardPage(), currentConfiguration),
        ];
    }
  }

  Page _createContentInPage(Widget e, PageConfiguration configuration) {
    return MaterialPage<void>(
      child: e,
      key: ValueKey(configuration.key),
      name: configuration.path,
      arguments: configuration,
    );
  }

  Page _wrapContentInPage(Widget e) {
    return MaterialPage<void>(child: e);
  }

  @override
  Future<void> setInitialRoutePath(PageConfiguration configuration) async {
    if (kReleaseMode == false) {}
    await setNewRoutePath(configuration);
    mainAppState.hasSetInitialRoute = true;
    if (kDebugMode) safePrintForRelease('setInitialRoutePath complete');
  }

  @override
  Future<void> setNewRoutePath(PageConfiguration configuration) async {}

  bool tryGoBack() {
    if (currentConfiguration.pageTree.length > 1) {
      setNewRoutePath(currentConfiguration.pageTree[0]);
      return true;
    }
    return false;
  }

  //
  @override
  Future<bool> popRoute() async {
    return true;
  }

  bool _handleNavigatorPop(Route<dynamic> route, dynamic result) {
    if (route.didPop(result)) {}
    return true;
  }
}
