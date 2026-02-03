import 'dart:typed_data';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../../domain/entities/mask_data.dart';
import '../../domain/repositories/image_repository.dart';

/// Use case for segmenting person from background
@injectable
class SegmentPersonUseCase implements UseCase<MaskData, SegmentPersonParams> {
  final ImageRepository repository;

  SegmentPersonUseCase(this.repository);

  @override
  Future<Either<Failure, MaskData>> call(SegmentPersonParams params) async {
    return await repository.segmentPerson(params.imageBytes);
  }
}

class SegmentPersonParams extends Equatable {
  final Uint8List imageBytes;

  const SegmentPersonParams(this.imageBytes);

  @override
  List<Object?> get props => [imageBytes];
}
