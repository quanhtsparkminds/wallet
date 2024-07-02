import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/shared/language/en.dart';
import 'package:myapp/shared/language/vi.dart';
import 'package:myapp/shared/mixins/translation_mixin.dart';

enum SupportLocales { en, vi }

class TranslationService extends Translations with TranslationMixin {
  static Locale? get locale => Get.deviceLocale;
  static const fallbackLocale = Locale('en', 'US');

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': translationEn,
        'vi_VN': translationVi,
      };
}
