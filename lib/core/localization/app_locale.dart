import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AppLocale {
  //Langue par défaut de l'application
  static Locale localeParDefaut = const Locale('fr', 'FR');

  //Les langues supportées
  static List<Locale> toutesLesLocales = const [
    Locale('fr', 'FR'),
    Locale('en', 'US'),
    Locale('ar', 'SA'),
  ];

  //Les delegates de localisation
  static List<LocalizationsDelegate<dynamic>> tousLesDelegates = const [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];

  //Résolution de la langue par défaut
  static Locale resolutionLocaleParDefaut(
    Locale? locale,
    Iterable<Locale> supportedLocales,
  ) {
    if (locale != null) {
      for (Locale supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode &&
            supportedLocale.countryCode == locale.countryCode) {
          return supportedLocale;
        }
      }
    }
    return localeParDefaut;
  }
}
