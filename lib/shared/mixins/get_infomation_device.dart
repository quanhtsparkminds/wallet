import 'package:flutter/cupertino.dart';
import 'package:myapp/commands/core/app_key.dart';
import 'package:myapp/shared/helps/spref.dart';
import 'package:platform_device_id/platform_device_id.dart';

getInfoDevice() async {
  try {
    String? deviceId = await PlatformDeviceId.getDeviceId;
    await SPref.instance.set(AppKey.deviceId, deviceId);
    debugPrint('deviceId______________ ${SPref.instance.get(AppKey.deviceId)}');
  } catch (error) {
    rethrow;
  }
}
