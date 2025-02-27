import 'package:tp4_mvvm/model/user_model.dart';

abstract class UserRepository {
  Future<UserModel> fetchUserById(int id);
  Future<List<UserModel>> fetchAllUsers();
  Future<void> updateUser(UserModel user);
  Future<void> deleteUser(int id);
}