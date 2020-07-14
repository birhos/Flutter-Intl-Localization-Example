import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:intl_example/generated/l10n.dart';
import 'package:intl_example/src/enums/language.dart';

class LocalizationConstants {
  LocalizationConstants._();

  static const Iterable<LocalizationsDelegate> localizationsDelegates = const [
    AppLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];

  static List<Locale> supportedLocales =
      AppLocalizations.delegate.supportedLocales;

  static const Locale TR_LOCALE = Locale("tr", "TR");
  static const Locale EN_LOCALE = Locale("en", "US");

  // AppLocalizations

  static List<String> isSupported = <String>[
    TR_LOCALE.languageCode,
    EN_LOCALE.languageCode,
  ];

  static Language localeToLanguage(Locale locale) {
    Language result;

    switch (locale.languageCode) {
      case "tr":
        result = Language.TR;
        break;
      case "en":
        result = Language.EN;
        break;
    }

    return result;
  }
}
