# myapp

version SDK : stable. 3.10.5

# sparkminds-flutter-base

Flutter-sdk: 3.10.6
Java 18.0.2.1

# Run it for flavor

flutter pub run flutter_flavorizr -p assets:download,assets:extract,android:androidManifest,android:buildGradle,ios:xcconfig,ios:buildTargets,ios:schema,ios:plist,google:firebase,assets:clean,ide:config

# Run it for icons

gen assets: flutter packages pub run build_runner build
flutter pub run flutter_launcher_icons -f flutter_launcher_icons-dev.yaml
flutter pub run flutter_launcher_icons -f flutter_launcher_icons-stg.yaml
flutter pub run flutter_launcher_icons -f flutter_launcher_icons-prod.yaml

gen freezed: fvm flutter pub run build_runner build --delete-conflicting-outputs

run init flutterfire: fvm dart pub global run flutterfire_cli:flutterfire configure

gen assets: flutter packages pub run build_runner build --delete-conflicting-outputs

# Run release for android

flutter build appbundle --flavor prod -t lib/main_prod.dart
flutter build apk --flavor prod -t lib/main_prod.dart

run with software rendering: fvm flutter run --enable-software-rendering
Deprecated Gradle features were used in this build, making it incompatible with Gradle 8.0.

<https://developer.android.com/studio/publish/app-signing#sign-apk>
<https://docs.flutter.dev/deployment/android>


#Struture

├── /assets
│   ├── /app_icon
│   │   └── ...
│   ├── /fonts
│   │   └── ...
│   ├── /icons
│   │   ├── ...
│   │   ├── ...
│   │   └── ...
│   ├── /images
│   │   ├── ...
│   └── /svg
│       └── ...
└── /lib
│   ├── /commands
│   │   └── /core
|   |      └── ...
|   |   └── /api_client
|   |      └── /interceptor
│   │         └── auth_interceptor.dart
│   │         └── dio_cache_interceptor.dart
|   |      └── api_client.dart
|   |      └── api_config.dart
|   |      └── api_result.dart
|   |      └── dio_client.dart
|   |      └── dio_exception.dart
│   │   └── navigate
│   │   └── ...
│   ├── /config
│   │   └── main_app_service.dart
│   │   └── app_initlize.dart
│   │   └── sprefs.dart
│   │   └── ...
│   ├── /constants
│   │   └── app_color.dart
│   │   └── app_key.dart
│   │   └── size.dart
│   │   └── ...
│   ├── /domain
│   │   └── local_storage.dart
│   │   └── model.dart
|   |      └── /authe_model
|   |      └── /profile_model
│   │   └── respositories.dart
|   |      └── auth_respository.dart
|   |      └── ...
│   ├── /event
│   │   └── ...
│   ├── /feature
│   │   └── /launch
|   |      └── /bloc-cubit
|   |      └── /view
|   |      └── /widgets
|   |      └── launch_screen_view.dart
│   │   └── /home
|   |      └── /bloc-cubit
|   |         └── home_cubit.dart
|   |         └── home_state.dart
|   |      └── /view
|   |      └── /widgets
|   |      └── home_screen_view.dart
│   ├── /gen
│   │   └── assets.gen.dart
│   ├── /main_model
│   │   └── main_app_state.dart // Load app and main state all in app
│   │   └── network_connection.dart // Load app and main state all in app
│   ├── /routing
│   │   └── /page_configuration
|   |      └── auth_page_configuration.dart
|   |      └── launch_page_configuration.dart
|   |      └── home_page_configuration.dart
│   │   └── app_route_parser.dart
│   │   └── app_router.dart
│   │   └── page_configuration.dart
│   ├── /shared
│   │   └── /helps
|   |      └── regex.dart
|   |      └── spref.dart
|   |      └── storage_secure.dart
|   |      └── translations.dart
│   │   └── /languages
|   |      └── en.dart
|   |      └── translation_key.dart
|   |      └── vi.dart
│   │   └── /mixins

|   |      └── validator_mixin.dart
│   │   └── /utils
|   |      └── /universal_file
|   |         └── ...
|   |      └── /validator
|   |         └── ...
|   |      └── format.dart
|   |      └── screen_size.dart
|   |      └── time_utils.dart
│   │   └── /widgets
|   |      └── /app_text
|   |      └── /app_dropdown
|   |      └── ...
|   └── app_initialized
|   └── theme.dart
|   └── flavor.dart
|   └── main.dart
|   └── main_dev.dart
|   └── main_stg.dart
|   └── main_prod.dart
