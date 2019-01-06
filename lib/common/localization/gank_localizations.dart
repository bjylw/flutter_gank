import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_gank/common/constant/locale/string_base.dart';
import 'package:flutter_gank/common/constant/locale/string_en.dart';
import 'package:flutter_gank/common/constant/locale/string_zh.dart';

///自定义多语言实现
class GankLocalizations {
  final Locale locale;

  GankLocalizations(this.locale);

  static Map<String, StringBase> _localizedValues = {
    'en': StringEn(),
    'zh': StringZh(),
  };

  StringBase get currentLocalized {
    return _localizedValues[locale.languageCode];
  }

  static GankLocalizations of(BuildContext context) {
    return Localizations.of(context, GankLocalizations);
  }
}