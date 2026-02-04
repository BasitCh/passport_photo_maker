import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/export_entry.dart';
import '../../domain/repositories/storage_repository.dart';

@injectable
class ExportHistoryCubit extends Cubit<ExportHistoryState> {
  final StorageRepository storageRepository;

  ExportHistoryCubit(this.storageRepository)
      : super(const ExportHistoryState.loading()) {
    loadHistory();
  }

  Future<void> loadHistory() async {
    emit(const ExportHistoryState.loading());
    final result = await storageRepository.getExportHistory();
    result.fold(
      (failure) => emit(ExportHistoryState.error(failure.message)),
      (entries) => emit(ExportHistoryState.ready(entries)),
    );
  }

  Future<void> refresh() async {
    final result = await storageRepository.getExportHistory();
    result.fold(
      (failure) => emit(ExportHistoryState.error(failure.message)),
      (entries) => emit(ExportHistoryState.ready(entries)),
    );
  }

  Future<void> share(String path) async {
    await storageRepository.shareImage(path);
  }
}

class ExportHistoryState extends Equatable {
  final bool isLoading;
  final List<ExportEntry> entries;
  final String? error;

  const ExportHistoryState._({
    required this.isLoading,
    required this.entries,
    this.error,
  });

  const ExportHistoryState.loading()
      : this._(isLoading: true, entries: const []);

  const ExportHistoryState.ready(List<ExportEntry> entries)
      : this._(isLoading: false, entries: entries);

  const ExportHistoryState.error(String message)
      : this._(isLoading: false, entries: const [], error: message);

  @override
  List<Object?> get props => [isLoading, entries, error];
}
