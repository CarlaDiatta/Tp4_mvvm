import 'package:provider/provider.dart';
import 'package:tp4_mvvm/config/routeur.dart';
import 'package:tp4_mvvm/core/constant/app_constants.dart';
import 'package:tp4_mvvm/core/localization/app_locale.dart';
import 'package:tp4_mvvm/core/theme/theme_perso.dart';
import 'package:flutter/material.dart';
import 'package:tp4_mvvm/repositories/api_user_repository.dart';
import 'package:tp4_mvvm/view_model/user_view_model.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => UserViewModel(ApiUserRepository())
      )
    ], child: const MonApplication(),)
  );
}

class MonApplication extends StatefulWidget {
  const MonApplication({super.key});

  @override
  State<MonApplication> createState() => _MonApplicationState();
}

class _MonApplicationState extends State<MonApplication> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Titre de l'application
      title: AppConstants.titreApplication,

      //Supprimer le debug banner
      debugShowCheckedModeBanner: false,

      //Les routes de l'application

      // routes: Routeur.toutesLesRoutes,
      onGenerateRoute: Routeur.genererRoute,
      initialRoute: Routeur.routeAccueil,
      onUnknownRoute: Routeur.siRouteInconnue,

      //Theme de l'application
      theme: ThemePerso.modeClair,
      darkTheme: ThemePerso.modeSombre,
      themeMode: ThemeMode.system,

      //localisation de l'application
      locale: AppLocale.localeParDefaut,
      supportedLocales: AppLocale.toutesLesLocales,
      localizationsDelegates: AppLocale.tousLesDelegates,
      localeResolutionCallback: AppLocale.resolutionLocaleParDefaut,
    );
  }
}
