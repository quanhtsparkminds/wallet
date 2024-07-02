import 'package:myapp/routing/page_configuration.dart';

class DashBoardPageConfiguration extends PageConfiguration {
  DashBoardPageConfiguration()
      : super(key: 'home', path: dashBoardPath, uiPage: Pages.dashBoard);

  factory DashBoardPageConfiguration.fromLocation(String location) {
    final config = DashBoardPageConfiguration();
    final uri = Uri.parse(location);
    final pathSegments = uri.pathSegments;
    return config;
  }
}
