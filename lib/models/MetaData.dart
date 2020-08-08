import 'package:json_annotation/json_annotation.dart';

part 'MetaData.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class MetaData {
  final int id;
  final String key;
  final String value;

  MetaData(this.id, this.key, this.value);

  factory MetaData.fromJson(Map<String, dynamic> json) =>
      _$MetaDataFromJson(json);

  Map<String, dynamic> toJson() => _$MetaDataToJson(this);
}
