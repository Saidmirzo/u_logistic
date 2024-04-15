import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl extends NetworkInfo {
  final InternetConnectionChecker interConnection;
  NetworkInfoImpl({required this.interConnection});
  @override
  Future<bool> get isConnected => interConnection.hasConnection;
}
