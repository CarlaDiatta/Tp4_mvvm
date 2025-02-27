import 'package:flutter/widgets.dart';
import 'package:tp4_mvvm/dto/user_dto.dart';
import 'package:tp4_mvvm/repositories/user_repository.dart';
import 'package:tp4_mvvm/services/api_services.dart';
import 'package:tp4_mvvm/model/user_model.dart';

class ApiUserRepository implements UserRepository {
  @override
  Future<UserModel> fetchUserById(int id) {
    // Implementation would fetch user from API
    throw UnimplementedError();
  }

  @override
  Future<List<UserModel>> fetchAllUsers() {
     try{
      List<UserModel> users = [];
      final resultat = ApiServices.get('');  

      // Conversion en liste de Map
      final List<Map<String, dynamic>> data =  List<Map<String, dynamic>>.from(resultat as List);

      //Conversion de la liste de Map en liste de DTO
      final resultatEnDTO = data.map((u) {
        return UserDto.fromJson(u);
      }).toList();

      //Conversion de la liste de DTO en liste de Model
      users = resultatEnDTO.map((u) {
        return UserModel(
          identifiant: u.id,
          nomComplet: u.fullname,
          adresseEmail: u.email,
          nomEntreprise: u.entreprise
        );
      }).toList();

      return Future.value(users);

     }catch(e, StackTrace){
       debugPrint(e.toString());
       debugPrint(StackTrace.toString());
       rethrow ;
     }
    
  }

  @override
  Future<void> updateUser(UserModel user) {
    // Implementation would update user on API
    throw UnimplementedError();
  }

  @override
  Future<void> deleteUser(int id) {
    // Implementation would delete user from API
    throw UnimplementedError();
  }
}