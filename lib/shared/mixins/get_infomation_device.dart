import 'package:myapp/constants/app_key.dart';
import 'package:myapp/shared/helps/spref.dart';
import 'package:platform_device_id/platform_device_id.dart';

getInfoDevice() async {
  try {
    String? deviceId = await PlatformDeviceId.getDeviceId;
    await SPref.instance.set(AppKey.deviceId, deviceId);
    print("deviceId______________" + SPref.instance.get(AppKey.deviceId));
  } catch (error) {
    throw error;
  }
}
