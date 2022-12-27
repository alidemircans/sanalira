import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:sanalira/core/network/dio_client.dart';
import 'package:sanalira/repository/bank_repository.dart';
import 'package:sanalira/service/bank_service.dart';
import 'package:sanalira/service/shadred_preferences_services.dart';

GetIt locator = GetIt.instance;

setupLocator() {
  locator.registerSingleton(Dio());
  locator.registerSingleton(DioClient(locator<Dio>()));
  locator.registerLazySingleton(
      () => BankService(dioClient: DioClient(locator<Dio>())));
  locator
      .registerLazySingleton(() => BankRepository(locator.get<BankService>()));
  locator.registerLazySingleton(() => SharedPreferencesServices());
}
