import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myapp/model/main_app_state.dart';
import 'package:myapp/shared/utils/device_info.dart';
import 'package:myapp/shared/utils/safe_print.dart';
import 'package:myapp/shared/utils/time_utils.dart';
import 'package:system_info/system_info.dart';
import '../commands/base_command.dart' as Commands;

class BootstrapCommand extends Commands.BaseAppCommand {
  static int kMinBootstrapTimeMs = 2000;

  Future<void> run(BuildContext context) async {
    int startTime = TimeUtils.nowMillis;
    if (Commands.mainContext == null) {
      Commands.setContext(context);
    }
    safePrintForRelease('Bootstrap Started, v${MainAppState.kVersion}');
    // Load AppModel ASAP
    await mainAppState.load();
    // safePrintForRelease(
    //     "BootstrapCommand - AppModel Loaded, user = ${mainAppState.currentUser}");
    // Set the cacheSize so we'll use more RAM on desktop and higher spec devices.
    _configureMemoryCache();

    // Once model is loaded, we can configure the desktop.
    if (DeviceInfo.isDesktop) {}
    // For aesthetics, we'll keep splash screen up for some min-time (skip on web)
    if (kIsWeb == false) {
      int remaining = kMinBootstrapTimeMs - (TimeUtils.nowMillis - startTime);
      if (remaining > 0) {
        await Future<void>.delayed(Duration(milliseconds: remaining));
      }
    }
    mainAppState.hasBootstrapped = true;
    safePrintForRelease('BootstrapCommand - Complete');
  }

  void _configureMemoryCache() {
    int cacheSize = (DeviceInfo.isDesktop ? 2048 : 512) << 20;
    // If we're on a native platform, reserve some reasonable amt of RAM
    if (DeviceInfo.isDesktop) {
      try {
        // Use some percentage of system ram, but don't fall below the default, in case this returns 0 or some other invalid value.
        cacheSize =
            max(cacheSize, (SysInfo.getTotalPhysicalMemory() / 4).round());
      } on Exception catch (e) {
        safePrintForRelease(e.toString());
      }
    }
    imageCache.maximumSizeBytes = cacheSize;
  }
}
