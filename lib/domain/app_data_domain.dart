import 'package:prepared_flutter_project/resourses/strings.dart';

/// Доменная модель для данных
class AppDataDomain {
  String name;

  AppDataDomain({
    String? name,
  }) : name = name ?? emptyString;
}
