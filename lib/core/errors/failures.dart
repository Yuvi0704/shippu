
// lib/core/errors/failures.dart

// ignore: depend_on_referenced_packages

abstract class Failure extends Equatable {
  @override
  // ignore: override_on_non_overriding_member
  List<Object> get props => [];
}

class Equatable {
}

class ServerFailure extends Failure {}

class CacheFailure extends Failure {}
