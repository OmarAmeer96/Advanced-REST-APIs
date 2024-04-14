import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test_apis/models/user.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: 'https://gorest.co.in/public/v2/')
abstract class ApiServices {
  factory ApiServices(Dio dio, {String baseUrl}) = _ApiServices;

  @GET('users')
  Future<List<User>> getAllUsers();

  @GET('users/{id}')
  Future<User> getUserById(@Path('id') int userId);

  @POST('users')
  Future<User> createNewUser(
    @Body() User newUser,
    @Header('Authorization') String token,
  );

  @DELETE('users/{id}')
  Future<dynamic> deleteUserById(
    @Path('id') int userId,
    @Header('Authorization') String token,
  );
}
