part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}

final class GetAllUsers extends HomeState {
  final List<User> users;

  GetAllUsers(this.users);
}

final class GetUserById extends HomeState {
  final User user;

  GetUserById(this.user);
}

final class CreateUser extends HomeState {
  final User newUser;

  CreateUser(this.newUser);
}

final class DeleteUserById extends HomeState {
  final dynamic data;

  DeleteUserById(this.data);
}

final class HomeFailure extends HomeState {
  final String error;

  HomeFailure(this.error);
}
