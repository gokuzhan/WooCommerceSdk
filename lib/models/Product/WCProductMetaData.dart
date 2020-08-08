import 'package:json_annotation/json_annotation.dart';

part 'WCProductMetaData.g.dart';

@JsonSerializable()
class WCProductMetaData {
  final int id;
  final String key;
  final dynamic value;

  WCProductMetaData(this.id, this.key, this.value);

  factory WCProductMetaData.fromJson(Map<String, dynamic> json) =>
      _$WCProductMetaDataFromJson(json);

  Map<String, dynamic> toJson() => _$WCProductMetaDataToJson(this);
}
