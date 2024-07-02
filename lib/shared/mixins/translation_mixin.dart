import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:myapp/shared/helps/storage_hepler.dart';
import 'package:myapp/shared/language/translation_key.dart';

mixin TranslationMixin {
  String getLanguageLabel(Locale locale, {bool? niceForm}) {
    switch (locale.languageCode) {
      case 'en':
        return niceForm == true ? TranslationKeys.english.tr : 'en';
      default:
        return niceForm == true ? TranslationKeys.vietnamese.tr : 'vi';
    }
  }

  void updateLanguage(String language) async {
    Get.updateLocale(Locale(language));
    await StorageHelper().setLanguage(language);
  }

  void toggleLanguages() async {
    String language = Get.locale?.languageCode.toString() ?? 'vi';
    updateLanguage(language == 'en' ? 'vi' : 'en');
  }

  void toggleLanguage(String language) async {
    updateLanguage(language);
  }
}
