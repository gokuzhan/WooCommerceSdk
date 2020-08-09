import 'package:json_annotation/json_annotation.dart';

part 'WCOrderMetaData.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCOrderMetaData {
  final int id;
  final String key;
  final dynamic value;

  WCOrderMetaData(this.id, this.key, this.value);

  factory WCOrderMetaData.fromJson(Map<String, dynamic> json) =>
      _$WCOrderMetaDataFromJson(json);

  Map<String, dynamic> toJson() => _$WCOrderMetaDataToJson(this);
}
