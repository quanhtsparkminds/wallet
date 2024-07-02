import 'package:flutter/material.dart';
import 'package:myapp/routing/page_configuration.dart';
import 'package:myapp/shared/utils/safe_print.dart';

class AppRouteParser extends RouteInformationParser<PageConfiguration> {
  @override
  Future<PageConfiguration> parseRouteInformation(
      RouteInformation routeInformation) async {
    PageConfiguration link =
        PageConfiguration.fromLocation(routeInformation.location);
    safePrintForRelease(
        'parseRouteInfo: ${routeInformation.location} == ${link.location}');
    return link;
  }

  @override
  RouteInformation restoreRouteInformation(PageConfiguration configuration) {
    // Ask the applink to give us a string
    String location = configuration.location;
    safePrintForRelease('restoreRouteInfo: $location');

    // Pass that string back to the OS so it can update the url bar
    return RouteInformation(location: location);
  }
}