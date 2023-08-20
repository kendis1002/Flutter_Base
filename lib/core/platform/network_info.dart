import 'package:connectivity_plus/connectivity_plus.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  NetworkInfoImpl(this.connectionChecker);

  final Connectivity connectionChecker;

  @override
  Future<bool> get isConnected async {
    final ConnectivityResult connectivityResult =
        await connectionChecker.checkConnectivity();
    return connectivityResult != ConnectivityResult.none;
  }
}
