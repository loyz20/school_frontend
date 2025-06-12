import 'package:get_it/get_it.dart';
import 'features/auth/domain/usecases/login_user.dart';
import 'features/auth/domain/repositories/auth_repository.dart';
import 'features/auth/data/repositories/auth_repository_impl.dart';
import 'features/auth/data/datasources/auth_remote_data_source.dart';

final sl = GetIt.instance;

void init() {
  // Usecases
  sl.registerLazySingleton(() => LoginUser(sl()));

  // Repository
  sl.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(remoteDataSource: sl()));

  // Data sources
  sl.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl());
}
