import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:softcent_task/core/network/network_info.dart';


final instance = GetIt.instance;

Future<void> initAppModule() async {
  instance.registerLazySingleton<INetworkInfo>(
      () => NetworkInfo(InternetConnectionChecker()));

}
