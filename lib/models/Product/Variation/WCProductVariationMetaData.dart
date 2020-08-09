import 'package:json_annotation/json_annotation.dart';

part 'WCProductVariationMetaData.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCProductVariationMetaData {
  final int id;
  final String key;
  final dynamic value;

  WCProductVariationMetaData(this.id, this.key, this.value);

  factory WCProductVariationMetaData.fromJson(Map<String, dynamic> json) =>
      _$WCProductVariationMetaDataFromJson(json);

  Map<String, dynamic> toJson() => _$WCProductVariationMetaDataToJson(this);
}
