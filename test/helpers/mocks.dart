import 'package:mocktail/mocktail.dart';
import 'package:passport_photo_maker/features/editor/domain/repositories/image_repository.dart';
import 'package:passport_photo_maker/features/export/domain/repositories/storage_repository.dart';
import 'package:passport_photo_maker/features/editor/application/usecases/pick_image_usecase.dart';
import 'package:passport_photo_maker/features/editor/application/usecases/segment_person_usecase.dart';
import 'package:passport_photo_maker/features/editor/application/usecases/generate_preview_usecase.dart';
import 'package:passport_photo_maker/features/export/application/usecases/export_image_usecase.dart';

// Repository Mocks
class MockImageRepository extends Mock implements ImageRepository {}

class MockStorageRepository extends Mock implements StorageRepository {}

// Use Case Mocks
class MockPickImageUseCase extends Mock implements PickImageUseCase {}

class MockSegmentPersonUseCase extends Mock implements SegmentPersonUseCase {}

class MockGeneratePreviewUseCase extends Mock
    implements GeneratePreviewUseCase {}

class MockExportImageUseCase extends Mock implements ExportImageUseCase {}
