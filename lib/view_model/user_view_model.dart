import 'package:flutter/material.dart';
import 'package:tp4_mvvm/repositories/user_repository.dart';
import 'package:tp4_mvvm/model/user_model.dart';

class UserViewModel  extends ChangeNotifier{
  final UserRepository repository;
  UserViewModel(this.repository);

  //Les variables d'état
  List<UserModel> utilisateurs = [];
  String? erreur = '';
  bool estEnChargement = false;

  Future<void> chargerUtilisateurs() async {
    try {
      estEnChargement = true;
      erreur = null;
      notifyListeners();

      utilisateurs = await repository.fetchAllUsers();
      erreur = null;
    } catch (e) {
      erreur = 'Erreur lors du chargement des utilisateurs';
    } finally {
      estEnChargement = false;
      notifyListeners();
    }
  }
}