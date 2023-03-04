import 'package:elementary/elementary.dart';
import 'package:prepared_flutter_project/domain/sample/interactors/sample_interactor.dart';

/// Имплементация Elementary модели к домашней странице
class HomeScreenModel extends ElementaryModel {
  HomeScreenModel({
    required SampleInteractor sampleInteractor,
    super.errorHandler,
  })  : _sampleInteractor = sampleInteractor;

  final SampleInteractor _sampleInteractor;
}
