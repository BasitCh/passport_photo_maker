// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:image_picker/image_picker.dart' as _i183;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../features/editor/application/usecases/generate_preview_usecase.dart'
    as _i91;
import '../../features/editor/application/usecases/pick_image_usecase.dart'
    as _i750;
import '../../features/editor/application/usecases/segment_person_usecase.dart'
    as _i892;
import '../../features/editor/data/datasources/image_processing_datasource.dart'
    as _i892;
import '../../features/editor/data/datasources/ml_kit_datasource.dart' as _i162;
import '../../features/editor/data/repositories/image_repository_impl.dart'
    as _i471;
import '../../features/editor/domain/repositories/image_repository.dart'
    as _i802;
import '../../features/editor/presentation/bloc/editor_bloc.dart' as _i337;
import '../../features/export/application/usecases/export_image_usecase.dart'
    as _i527;
import '../../features/export/data/datasources/storage_datasource.dart'
    as _i395;
import '../../features/export/data/repositories/storage_repository_impl.dart'
    as _i164;
import '../../features/export/domain/repositories/storage_repository.dart'
    as _i1050;
import '../../features/export/presentation/bloc/export_history_cubit.dart'
    as _i992;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i892.ImageProcessingDataSource>(
      () => _i892.ImageProcessingDataSource(),
    );
    gh.lazySingleton<_i162.MlKitDataSource>(() => _i162.MlKitDataSource());
    gh.lazySingleton<_i802.ImageRepository>(
      () => _i471.ImageRepositoryImpl(
        mlKitDataSource: gh<_i162.MlKitDataSource>(),
        imageProcessingDataSource: gh<_i892.ImageProcessingDataSource>(),
        imagePicker: gh<_i183.ImagePicker>(),
      ),
    );
    gh.factory<_i91.GeneratePreviewUseCase>(
      () => _i91.GeneratePreviewUseCase(gh<_i802.ImageRepository>()),
    );
    gh.factory<_i892.SegmentPersonUseCase>(
      () => _i892.SegmentPersonUseCase(gh<_i802.ImageRepository>()),
    );
    gh.factory<_i750.PickImageUseCase>(
      () => _i750.PickImageUseCase(gh<_i802.ImageRepository>()),
    );
    gh.lazySingleton<_i395.StorageDataSource>(
      () => _i395.StorageDataSource(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i1050.StorageRepository>(
      () => _i164.StorageRepositoryImpl(gh<_i395.StorageDataSource>()),
    );
    gh.factory<_i527.ExportImageUseCase>(
      () => _i527.ExportImageUseCase(
        gh<_i802.ImageRepository>(),
        gh<_i1050.StorageRepository>(),
      ),
    );
    gh.factory<_i337.EditorBloc>(
      () => _i337.EditorBloc(
        pickImageUseCase: gh<_i750.PickImageUseCase>(),
        segmentPersonUseCase: gh<_i892.SegmentPersonUseCase>(),
        generatePreviewUseCase: gh<_i91.GeneratePreviewUseCase>(),
        exportImageUseCase: gh<_i527.ExportImageUseCase>(),
      ),
    );
    gh.factory<_i992.ExportHistoryCubit>(
      () => _i992.ExportHistoryCubit(gh<_i1050.StorageRepository>()),
    );
    return this;
  }
}
