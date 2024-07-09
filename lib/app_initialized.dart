import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_storage/get_storage.dart';
import 'package:myapp/domain/api_client/dio_client.dart';
import 'package:myapp/flavors.dart';

Future<void> appInitialized() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Load env base on config
  await dotenv.load(fileName: F.configFileName);

  // Init get storage for use share pref
  await GetStorage.init();
  await ApiUtils().intialize();
}
