import 'package:dio/dio.dart';

Dio createAndSetupDio() {
  Dio dio = Dio();
  dio
    ..options.connectTimeout = const Duration(seconds: 1)
    ..options.receiveTimeout = const Duration(seconds: 10);

  // dio.options.headers['Authorization'] = 'Bearer $token';

  dio.interceptors.add(LogInterceptor(
    requestBody: true,
    responseBody: true,
    requestHeader: true,
    responseHeader: true,
    error: true,
    request: true,
  ));

  return dio;
}
