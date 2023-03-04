import 'package:injectable/injectable.dart';
import 'package:prepared_flutter_project/data/sample/repository/sample_repository.dart';

/// Интерактор
abstract class SampleInteractor {}

/// Имплементация к классу [SampleInteractor]
@LazySingleton(as: SampleInteractor)
class SampleInteractorImpl extends SampleInteractor {
  SampleInteractorImpl(
    this._sampleRepository,
  );

  /// Репозиторий
  final SampleRepository _sampleRepository;
}
