import 'package:get_it/get_it.dart';
import 'package:techfriar/data/core/DioManager.dart';
import 'package:techfriar/data/login/repository.dart';
import 'package:techfriar/data/trending/repository.dart';

final getIt = GetIt.instance;

Future<void> setUpDep() async {
  getIt.registerLazySingleton(() => DioManager());
  getIt.registerLazySingleton(() => LoginRepository(getIt<DioManager>()));
  getIt.registerLazySingleton(() => TrendingRepository(getIt<DioManager>()));
}
