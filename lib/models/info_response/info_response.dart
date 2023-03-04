import 'package:json_annotation/json_annotation.dart';

part 'info_response.g.dart';

/// Модель респонса информации
@JsonSerializable()
class InfoResponse {
  String? name;

  InfoResponse({
    this.name,
  });

  factory InfoResponse.fromJson(Map<String, dynamic> json) {
    return _$InfoResponseFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$InfoResponseToJson(this);
  }
}
