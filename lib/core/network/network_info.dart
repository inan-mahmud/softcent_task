import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class INetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfo implements INetworkInfo {
  final InternetConnectionChecker _internetConnectionChecker;

  NetworkInfo(this._internetConnectionChecker);

  @override
  Future<bool> get isConnected => _internetConnectionChecker.hasConnection;
}
