import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';

class NetworkService {
  final Connectivity _connectivity = Connectivity();
  final StreamController<bool> _connectionStatusController =
      StreamController<bool>.broadcast();

  NetworkService() {
    _connectivity.onConnectivityChanged
        .listen((List<ConnectivityResult> result) {
      _connectionStatusController.add(_checkConnectivity(result));
    });
  }

  Stream<bool> get connectionStatus => _connectionStatusController.stream;

  Future<bool> isConnected() async {
    final result = await _connectivity.checkConnectivity();
    return _checkConnectivity(result);
  }

  bool _checkConnectivity(List<ConnectivityResult> result) {
    var res = false;
    for (var e in result) {
      res = e == ConnectivityResult.mobile || e == ConnectivityResult.wifi;
    }
    return res;
  }

  void dispose() {
    _connectionStatusController.close();
  }
}
