import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:meta/meta.dart';
import 'package:test_apis/models/user.dart';
import 'package:test_apis/repos/home_repo.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(HomeInitial());
  final HomeRepo homeRepo;
  final storage = const FlutterSecureStorage();

  void getAllUsers() async {
    emit(HomeLoading());
    try {
      var users = await homeRepo.getAllUsers();
      emit(GetAllUsers(users));
    } catch (e) {
      emit(HomeFailure(e.toString()));
    }
  }

  void getUserById(int userId) async {
    emit(HomeLoading());
    try {
      var user = await homeRepo.getUserById(userId);
      emit(GetUserById(user));
    } catch (e) {
      emit(HomeFailure(e.toString()));
    }
  }

  // This method is used to save the token securely, for the [createUser] method.
  void saveToken() async {
    await storage.write(
      key: 'token',
      value: '7ef55ca9b1ecdde47047fd4bc7ae0b0a35000cd4e6dd64d04a5a96db9bef1189',
    );
  }

  void createUser(User newUser) async {
    saveToken();
    emit(HomeLoading());
    try {
      var token = await storage.read(key: 'token');
      log(token.toString());
      var user = await homeRepo.createUser(newUser, token!);
      emit(CreateUser(user));
    } catch (e) {
      emit(HomeFailure(e.toString()));
    }
  }

  void deleteUserById(int userId) async {
    saveToken();
    emit(HomeLoading());
    try {
      var token = await storage.read(key: 'token');
      await homeRepo.deleteUserById(userId, token!);
      emit(DeleteUserById('User Deleted Successfully'));
    } catch (e) {
      emit(HomeFailure(e.toString()));
    }
  }
}
