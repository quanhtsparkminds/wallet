import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:myapp/commands/core/app_key.dart';
import 'package:myapp/domain/model/auth_model/user_model.dart';
import 'package:myapp/domain/repositories/user_repo.dart';
import 'package:myapp/routing/page_configuration/authen_page_configuration.dart';
import 'package:myapp/routing/page_configuration/dashboard_page_configuration.dart';
import 'package:myapp/shared/helps/spref.dart';
import 'package:myapp/shared/utils/easy_notifier.dart';
import 'package:myapp/shared/utils/safe_print.dart';
import 'package:myapp/shared/utils/universal_file/universal_file.dart';
import 'package:myapp/themes.dart';
import 'package:universal_platform/universal_platform.dart';
import 'package:myapp/routing/page_configuration.dart';

abstract class AbstractModel extends EasyNotifier {}

// * Make sure file is cleared when we logout (ChangeUserCommand)
class MainAppState extends AbstractModel {
  static const kFileName = 'app-model';
  static const kVersion = '0.0.1';

  static bool get _defaultTouchMode =>
      UniversalPlatform.isIOS || UniversalPlatform.isAndroid;

  static AppTheme get _defaultTheme => AppTheme();
  static final PageConfiguration _defaultPage = DashBoardPageConfiguration();

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

  /// Touch Mode (show btns instead of using right-click, use larger paddings)
  bool _enableTouchMode = _defaultTouchMode;

  bool get enableTouchMode => _enableTouchMode;

  set enableTouchMode(bool value) {
    if (value == _enableTouchMode) return;
    notify(() => _enableTouchMode = value);
  }

  void reset() {
    // _currentUser = null;
    // userRepository.logout();
    _currentPage = LoginPageConfiguration();
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

  // Window Position
  Rect _windowRect = Rect.zero;

  Rect get windowRect => _windowRect;

  set windowRect(Rect value) {
    print('Set windowRect $value');
    notify(() => _windowRect = value);
  }

  bool get hasValidWindowRect {
    return !windowRect.isEmpty &&
        windowRect.size.width > 0 &&
        windowRect.size.height > 0 &&
        windowRect.left > 0 &&
        windowRect.right > 0;
  }

  void save() {
    print('Saving: $kFileName');
    String saveJson = jsonEncode(toJson());
    UniversalFile(kFileName).write(saveJson);
  }

  load() async {
    // SPref.instance.set(AppKey.idToken,
    //     'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiTUVNQkVSIiwiX2lkIjoiNjI4YzQzMzliYmYwZDUwMDFkNDgxMGY5IiwidXNlcm5hbWUiOiJnYXN0aGllbmhhQGdtYWlsLmNvbSIsImNyZWF0ZWRBdCI6IjIwMjItMDctMjBUMDc6NDY6NTAuMTQ5WiIsImlhdCI6MTY1ODMwMzIxMCwiZXhwIjoxNjYwODk1MjEwfQ.arYy15J0UyAXodkZ-iRsf3vgScgxtkK24x_iBY9qhgU');
    if (await SPref.instance.get(AppKey.xToken) == '') {
      _currentPage = LoginPageConfiguration();
    } else {
      userRepository.authGetMe();
      userRepository.getIsCurrentUser();
      _currentUser = userRepository.currentUser;
      _currentPage = userRepository.isCurrentUser
          ? DashBoardPageConfiguration()
          : LoginPageConfiguration();
    }

    String saveJson = await UniversalFile(MainAppState.kFileName).read();
    try {
      fromJson(jsonDecode(saveJson) as Map<String, dynamic>);
    } catch (e) {
      safePrintForRelease('Failed to load save file');
    }
    print('File loaded, $windowRect');
  }

  void fromJson(Map<String, dynamic> json) {
    if (json['enableTouchMode'] != null) {
      _enableTouchMode = json['enableTouchMode'] as bool;
    }
    _windowRect = Rect.fromLTWH(
      json['winX'] as double? ?? 0.0,
      json['winY'] as double? ?? 0.0,
      json['winWidth'] as double? ?? 0.0,
      json['winHeight'] as double? ?? 0.0,
    );
    //print(json);
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'winX': _windowRect.left,
      'winY': _windowRect.top,
      'winWidth': _windowRect.width,
      'winHeight': _windowRect.height,
      'enableTouchMode': enableTouchMode,
    };
  }
}
