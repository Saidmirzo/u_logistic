import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  final String? message;
  const Failure({this.message});
  @override
  List<Object?> get props => [message];
}
class CacheFailure extends Failure {
  const CacheFailure({super.message});
}

class ServerFailure extends Failure {
  const ServerFailure({super.message});
}

class ConnectionFailure extends Failure {
  const ConnectionFailure({super.message});
}

class BazeFailure extends Failure {
  const BazeFailure({super.message});
}

class BadResponceFailure extends Failure {
  const BadResponceFailure({super.message});
}

class UnknownFailure extends Failure {
  const UnknownFailure({super.message});
}

class UnautorizedFailure extends Failure {
  const UnautorizedFailure({super.message});
}

class ForbiddenFailure extends Failure {
  const ForbiddenFailure({super.message});
}

class UrlNotFoundFailure extends Failure {
  const UrlNotFoundFailure({super.message});
}
