import 'dart:async';
import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:myapp/commands/core/app_color.dart';
import 'package:myapp/commands/set_network_commnad.dart';
import 'package:myapp/exported_packages.dart';
import 'package:myapp/model/main_app_state.dart';
import 'package:myapp/shared/poppover/popover_controller.dart';
import 'package:myapp/commands/base_command.dart' as commands;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/shared/utils/safe_print.dart';
import 'package:myapp/themes.dart';
import 'package:statsfl/statsfl.dart';

/// Wraps the entire app, providing it with various helper classes and wrapper widgets.
class MainAppScaffold extends StatefulWidget {
  const MainAppScaffold(
      {Key? key, required this.child, this.useSafeArea = false})
      : super(key: key);
  final Widget child;
  final bool useSafeArea;

  @override
  State<MainAppScaffold> createState() => _MainAppScaffoldState();
}

class _MainAppScaffoldState extends State<MainAppScaffold> {
  final ConnectivityResult _connectionStatus = ConnectivityResult.none;
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  late StreamSubscription<ConnectivityResult> subscription;
  @override
  void initState() {
    super.initState();
    initConnectivity();
    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      log('---------- $result');
    });
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  @override
  void dispose() {
    _connectivitySubscription.cancel();
    super.dispose();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initConnectivity() async {
    late ConnectivityResult result;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      log('Couldn\'t check connectivity status', error: e);
      return;
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) {
      return Future.value(null);
    }

    return _updateConnectionStatus(result);
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    safePrintForRelease(result.name);
    if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      SetNetworkCommand().run(true);
    } else {
      SetNetworkCommand().run(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    print('-----: $_connectionStatus');
    TextDirection textDirection =
        context.select((MainAppState app) => app.textDirection);
    AppTheme appTheme = context.select((MainAppState app) => app.theme);
    return Provider.value(
      value: appTheme,
      child: StatsFl(
        isEnabled: false,
        align: Alignment.bottomCenter,
        child: Directionality(
          textDirection: textDirection,
          child: Navigator(
            onPopPage: (Route route, result) {
              if (route.didPop(result)) return true;
              return false;
            },
            pages: [
              MaterialPage(child: Builder(
                builder: (BuildContext builderContext) {
                  commands.setContext(builderContext);
                  return PopOverController(
                    child: _WindowBorder(
                      color: AppColors.transparent,
                      child: Scaffold(
                        backgroundColor: AppColors.darkModeColor,
                        body: widget.useSafeArea
                            ? SafeArea(
                                child: Column(
                                  verticalDirection: VerticalDirection.up,
                                  children: [
                                    Expanded(
                                      child: widget.child,
                                    ),
                                  ],
                                ),
                              )
                            : Column(
                                verticalDirection: VerticalDirection.up,
                                children: [
                                  Expanded(
                                    child: widget.child,
                                  ),
                                ],
                              ),
                      ),
                    ),
                  );
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}

class _WindowBorder extends StatelessWidget {
  const _WindowBorder(
      {Key? key, required this.child, this.color = Colors.white})
      : super(key: key);
  final Widget child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      child,
      IgnorePointer(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: color.withOpacity(.1), width: 1),
          ),
        ),
      ),
    ]);
  }
}
