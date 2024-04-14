import 'package:test_apis/models/user.dart';
import 'package:test_apis/utils/api_services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class HomeRepo {
  final ApiServices apiServices;
  // For saving the token securely.
  final storage = const FlutterSecureStorage();

  HomeRepo(this.apiServices);

  Future<List<User>> getAllUsers() async {
    var response = await apiServices.getAllUsers();
    return response;
  }

  Future<User> getUserById(int userId) async {
    var response = await apiServices.getUserById(userId);
    return response;
  }

  Future<User> createUser(User newUser, String token) async {
    var response = await apiServices.createNewUser(
      newUser,
      'Bearer $token',
    );
    return response;
  }

  Future<dynamic> deleteUserById(int userId, String token) async {
    await apiServices.deleteUserById(
      userId,
      'Bearer $token',
    );
  }
}
