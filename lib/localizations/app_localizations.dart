import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'localization_constant.dart';

class AppLocalizations {
  final Locale? locale;

  AppLocalizations(this.locale);

  // Helper method to keep the code in the widgets concise
  // Localizations are accessed using an InheritedWidget "of" syntax
  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  // Static member to have a simple access to the delegate from the MaterialApp
  static LocalizationsDelegate<AppLocalizations> delegate =
      AppLocalizationsDelegate();

  Map<String, dynamic>? _localizedStrings;

  Future<bool> load() async {
    // Load the language JSON file from the "lang" folder

    String jsonString = await rootBundle.loadString('assets/langs/en-US.json');

    Map jsonMap = json.decode(jsonString);

    _localizedStrings = jsonMap.map((key, value) {
      return MapEntry(key, value.map((key, value) {
        return MapEntry(key, value);
      }));
    });

    return true;
  }

  // This method will be called from every widget which needs a localized text
  String? translate(String key) {
    final keys = key.split('.');
    return _localizedStrings?[keys[0]]?[keys[1]];
  }
}
