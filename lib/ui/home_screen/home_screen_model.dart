import 'package:elementary/elementary.dart';
import 'package:prepared_flutter_project/interactors/sample_interactor.dart';

/// Имплементация Elementary модели к домашней странице
class HomeScreenModel extends ElementaryModel {
  HomeScreenModel(
    ErrorHandler errorHandler,
    SampleInteractor sampleInteractor,
  ) : super(
          errorHandler: errorHandler,
        );
}
