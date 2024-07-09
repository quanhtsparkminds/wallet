import 'dart:async';

import 'package:flutter/services.dart';
import 'package:myapp/commands/core/app_key.dart';
import 'package:myapp/domain/model/auth_model/user_model.dart';
import 'package:myapp/domain/repositories/user_repo.dart';
import 'package:myapp/routing/page_configuration/authen_page_configuration.dart';
import 'package:myapp/routing/page_configuration/dashboard_page_configuration.dart';
import 'package:myapp/shared/helps/spref.dart';
import 'package:myapp/shared/utils/easy_notifier.dart';
import 'package:myapp/themes.dart';
import 'package:myapp/routing/page_configuration.dart';
import 'package:uni_links/uni_links.dart';

abstract class AbstractModel extends EasyNotifier {}

class MainAppState extends AbstractModel {
  static AppTheme get _defaultTheme => AppTheme();
  static final PageConfiguration _defaultPage = DashBoardPageConfiguration();

  late StreamSubscription _unitLinkSub;

  UserRepository userRepository;

  MainAppState({required this.userRepository});

  PageConfiguration _currentPage = _defaultPage;

  PageConfiguration get currentPage => _currentPage;

  set currentPage(PageConfiguration value) {
    if (currentPage.key == value.key) return;
    notify(() => _currentPage = value);
  }

  UserModel? _currentUser;

  UserModel? get currentUser => _currentUser;

  set currentUser(UserModel? currentUser) {
    _currentUser = currentUser;
    if (_currentUser == null) {
      reset();
    }
    notify();
  }

  void reset() {
    _currentUser = null;
    notify(() => _currentPage = LoginPageConfiguration());
  }

  /// Startup
  bool _hasBootstrapped = false;

  bool get hasBootstrapped => _hasBootstrapped;

  set hasBootstrapped(bool value) => notify(() => _hasBootstrapped = value);

  bool _hasSetInitialRoute = false;

  bool get hasSetInitialRoute => _hasSetInitialRoute;

  set hasSetInitialRoute(bool value) =>
      notify(() => _hasSetInitialRoute = value);

  /// Settings
  // Current Theme
  AppTheme _theme = _defaultTheme;

  AppTheme get theme => _theme;

  set theme(AppTheme theme) => notify(() => _theme = theme);

  // TextDirection
  TextDirection _textDirection = TextDirection.ltr;

  TextDirection get textDirection => _textDirection;

  set textDirection(TextDirection value) =>
      notify(() => _textDirection = value);

  load() async {
    try {
      String xTokenNotEmpty = await SPref.instance.get(AppKey.xToken);
      if (xTokenNotEmpty.isEmpty) {
        notify(() => _currentPage = LoginPageConfiguration());
      } else {
        userRepository.authGetMe();
        userRepository.getIsCurrentUser();
        _currentUser = userRepository.currentUser;
        PageConfiguration currentPage = userRepository.isCurrentUser
            ? DashBoardPageConfiguration()
            : LoginPageConfiguration();
        notify(() => _currentPage = currentPage);
      }
    } catch (e) {
      print('Err, $e');
    }
  }

  Future<String?> initUniLinks() async {
    try {
      final initialLink = await getInitialLink();
      _unitLinkSub = linkStream.listen((String? link) {
        if (link != null) {}
      }, onError: (err) {
        print(err);
      });
      return initialLink;
    } on PlatformException {
      return null;
    }
  }
}
