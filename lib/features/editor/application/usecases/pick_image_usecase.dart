import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../../domain/repositories/image_repository.dart';

/// Use case for picking an image
@injectable
class PickImageUseCase implements UseCase<String, PickImageParams> {
  final ImageRepository repository;

  PickImageUseCase(this.repository);

  @override
  Future<Either<Failure, String>> call(PickImageParams params) async {
    return await repository.pickImage(fromCamera: params.fromCamera);
  }
}

class PickImageParams extends Equatable {
  final bool fromCamera;

  const PickImageParams({this.fromCamera = false});

  @override
  List<Object?> get props => [fromCamera];
}
