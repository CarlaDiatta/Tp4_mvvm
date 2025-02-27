import 'package:tp4_mvvm/views/page_accueil.dart';
import 'package:tp4_mvvm/views/page_inconnue.dart';
import 'package:tp4_mvvm/views/page_detail_profil.dart';

import 'package:flutter/material.dart';

abstract class Routeur {
  //Definir les routes de l'application
  static const String routeAccueil = "/";
  static const String routeInconnue = "/page-inconnue";
  static const String routeDetailProfil = "/page-detail-profil";
  // static const String pageProfil = "/page-profil";

  //Definir la map des routes
  // static final Map<String, WidgetBuilder> toutesLesRoutes = {
  //   routeAccueil: (context) => PageAccueil(),
  //   pageCompteur: (context) => PageCompteur(),
  //   pageBoutique: (context) => PageBoutique(),
  //   pageProfil: (context) => PageProfil(),
  // };

  //Generer les routes de l'application
  static Route<dynamic> genererRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeAccueil:
        return MaterialPageRoute(builder: (_) => const PageAccueil());
      case routeDetailProfil:
        return MaterialPageRoute(builder: (_) => const PageDetailProfil());
      case routeInconnue:
        return MaterialPageRoute(builder: (_) => const PageInconnue());
      // case pageProfil:
      //   return MaterialPageRoute(
      //     builder: (context) {
      //       if (settings.arguments is Map<String, dynamic>) {
      //         final donneRecu = settings.arguments as Map<String, dynamic>;
      //         return PageProfil(userData: donneRecu);
      //       } else {
      //         //Si les arguments ne sont pas du bon type, retourner une page d'erreur ou la page d'accueil
      //         return PageErreur(
      //           message: "Donnée utilisateur manquantes ou invalides",
      //         );
      //       }
      //     },
      //   );

      default:
        return MaterialPageRoute(builder: (context) => PageAccueil());
    } //laisser le systeme gerer les routes inconnues
  }

  //Route par defaut
  static Route<dynamic> routeParDefaut(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => PageAccueil());
  }

  //Route inconnue
  static Route<dynamic> siRouteInconnue(RouteSettings settings) {
    return MaterialPageRoute(builder: (_) => const PageInconnue());
  }
}
