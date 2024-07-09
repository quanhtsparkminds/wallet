import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/app_initialized.dart';
import 'package:myapp/commands/bootstrap_command.dart';
import 'package:myapp/config/application.dart';
import 'package:myapp/feature/authentication/signin/login_cubit/login_cubit.dart';
import 'package:myapp/model/main_app_state.dart';
import 'package:myapp/model/main_login_model.dart';
import 'package:myapp/model/network_connection_model.dart';
import 'package:myapp/routing/app_route_parser.dart';
import 'package:myapp/routing/app_router.dart';
import 'package:myapp/themes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

Future<void> runMain() async {
  WidgetsFlutterBinding.ensureInitialized();

  await appInitialized();

  Application application = Application();
  await application.setup();

  MainAppState mainAppState =
      MainAppState(userRepository: application.userRepository);
  MainLoginState mainLoginState = MainLoginState();
  NetworkState networkState = NetworkState();
  await SentryFlutter.init(
    (options) {
      options.dsn =
          'https://09d2330dd0f0c0aac1ac1ea6a1125f8d@o4506267090157568.ingest.us.sentry.io/4507542378119168';
    },
    appRunner: () => runApp(
      MultiProvider(
        providers: [
          Provider.value(value: application.userRepository),
          BlocProvider<LoginCubit>.value(
            value: LoginCubit(),
          ),
          ChangeNotifierProvider.value(value: mainAppState),
          ChangeNotifierProvider.value(value: mainLoginState),
          ChangeNotifierProvider.value(value: networkState)
        ],
        child: _AppBootstrapper(),
      ),
    ),
  );
}

final navigatorKey = GlobalKey<NavigatorState>();

class _AppBootstrapper extends StatefulWidget {
  @override
  _AppBootstrapperState createState() => _AppBootstrapperState();
}

class _AppBootstrapperState extends State<_AppBootstrapper> {
  AppRouteParser routeParser = AppRouteParser();
  late AppRouterDelegate router;

  @override
  void initState() {
    router = AppRouterDelegate(context.read<MainAppState>());
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    scheduleMicrotask(() {
      BootstrapCommand().run(context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: routeParser,
      routerDelegate: router,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark(),
      darkTheme: AppTheme.dark(),
      themeMode: ThemeMode.dark,
      supportedLocales: const [
        Locale('en', 'US'),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}
