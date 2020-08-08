import 'package:json_annotation/json_annotation.dart';

part 'WCOrderPayloadMetaData.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCOrderPayloadMetaData {
  final int id;
  final String key;
  final String value;

  WCOrderPayloadMetaData(this.id, this.key, this.value);

  factory WCOrderPayloadMetaData.fromJson(Map<String, dynamic> json) =>
      _$WCOrderPayloadMetaDataFromJson(json);

  Map<String, dynamic> toJson() => _$WCOrderPayloadMetaDataToJson(this);
}
