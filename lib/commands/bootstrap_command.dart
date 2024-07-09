import 'dart:math';

import 'package:flutter/material.dart';
import 'package:myapp/shared/utils/device_info.dart';
import 'package:myapp/shared/utils/safe_print.dart';
import 'package:system_info/system_info.dart';
import '../commands/base_command.dart' as commands;

class BootstrapCommand extends commands.BaseAppCommand {
  static int kMinBootstrapTimeMs = 2000;

  Future<void> run(BuildContext context) async {
    if (commands.mainContext == null) {
      commands.setContext(context);
    }
    await mainAppState.load();
    _configureMemoryCache();

    mainAppState.hasBootstrapped = true;
    safePrintForRelease('BootstrapCommand - Complete');
  }

  void _configureMemoryCache() {
    int cacheSize = (DeviceInfo.isDesktop ? 2048 : 512) << 20;
    if (DeviceInfo.isDesktop) {
      try {
        cacheSize =
            max(cacheSize, (SysInfo.getTotalPhysicalMemory() / 4).round());
      } on Exception catch (e) {
        safePrintForRelease(e.toString());
      }
    }
    imageCache.maximumSizeBytes = cacheSize;
  }
}
