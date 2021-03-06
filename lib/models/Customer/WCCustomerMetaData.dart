import 'package:json_annotation/json_annotation.dart';

part 'WCCustomerMetaData.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCCustomerMetaData {
  final int id;
  final String key;
  final dynamic value;

  WCCustomerMetaData(this.id, this.key, this.value);

  factory WCCustomerMetaData.fromJson(Map<String, dynamic> json) =>
      _$WCCustomerMetaDataFromJson(json);

  Map<String, dynamic> toJson() => _$WCCustomerMetaDataToJson(this);
}
