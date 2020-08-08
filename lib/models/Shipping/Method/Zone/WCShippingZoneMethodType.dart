import 'package:json_annotation/json_annotation.dart';

import 'WCShippingZoneMethodOptions.dart';

part 'WCShippingZoneMethodType.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCShippingZoneMethodType {
  final String id;
  final String label;
  final String description;
  final String type;
  final String value;
  final String typeDefault;
  final String tip;
  final String placeholder;
  final WCShippingZoneMethodOptions options;

  WCShippingZoneMethodType(this.id, this.label, this.description, this.type,
      this.value, this.typeDefault, this.tip, this.placeholder, this.options);

  factory WCShippingZoneMethodType.fromJson(Map<String, dynamic> json) =>
      _$WCShippingZoneMethodTypeFromJson(json);

  Map<String, dynamic> toJson() => _$WCShippingZoneMethodTypeToJson(this);
}
