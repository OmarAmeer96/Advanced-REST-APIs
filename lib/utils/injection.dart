import 'package:get_it/get_it.dart';
import 'package:test_apis/manager/home_cubit/home_cubit.dart';
import 'package:test_apis/repos/home_repo.dart';
import 'package:test_apis/utils/api_services.dart';
import 'package:test_apis/utils/create_and_setup_dio.dart';

final getIt = GetIt.instance;

void initGetIt() {
  getIt.registerLazySingleton<HomeCubit>(() => HomeCubit(getIt()));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  getIt.registerLazySingleton<ApiServices>(
      () => ApiServices(createAndSetupDio()));
}
