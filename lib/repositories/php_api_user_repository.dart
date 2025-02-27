import 'package:tp4_mvvm/repositories/user_repository.dart';
import 'package:tp4_mvvm/model/user_model.dart';

class PhpApiUserRepository implements UserRepository{
  @override
  Future<void> deleteUser(int id) {
    // TODO: implement deleteUser
    throw UnimplementedError();
  }

  @override
  Future<List<UserModel>> fetchAllUsers() {
    // TODO: implement fetchAllUsers
    throw UnimplementedError();
  }

  @override
  Future<UserModel> fetchUserById(int id) {
    // TODO: implement fetchUserById
    throw UnimplementedError();
  }

  @override
  Future<void> updateUser(UserModel user) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }

}