import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static const String baseUrl = 'https://retoolapi.dev/nWJMWW/data';

  static Future<List<dynamic>> get(String endpoint) async {
   try {
      final response = await http.get(Uri.parse('$baseUrl/$endpoint'));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception('Erreur: code de statut ${response.statusCode}  Raison: ${response.reasonPhrase}');
      }
    } catch (e, stackTrace) {
      // Permet de savoir si l'application est en mode debug pour afficher les erreurs de manière plus détaillée
      if(kDebugMode){
        debugPrint(e.toString());
        debugPrint(stackTrace.toString());
      }
      rethrow;
    }
  }
  
}