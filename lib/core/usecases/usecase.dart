import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../error/failures.dart';

/// Base usecase interface
/// All use cases must return Either<Failure, Result>
abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

/// For use cases that don't need parameters
class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
