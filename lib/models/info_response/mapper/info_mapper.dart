import 'package:prepared_flutter_project/domain/app_data_domain.dart';
import 'package:prepared_flutter_project/models/info_response/info_response.dart';

AppDataDomain mapToContactSites(InfoResponse model) => AppDataDomain(
      name: model.name,
    );
