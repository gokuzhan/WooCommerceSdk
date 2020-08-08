import 'package:json_annotation/json_annotation.dart';

part 'WCShippingZoneMethodClassCost91.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCShippingZoneMethodClassCost91 {
  final String id;
  final String label;
  final String description;
  final String type;
  final String value;
  final String classCost91Default;
  final String tip;
  final String placeholder;

  WCShippingZoneMethodClassCost91(
      this.id,
      this.label,
      this.description,
      this.type,
      this.value,
      this.classCost91Default,
      this.tip,
      this.placeholder);

  factory WCShippingZoneMethodClassCost91.fromJson(Map<String, dynamic> json) =>
      _$WCShippingZoneMethodClassCost91FromJson(json);

  Map<String, dynamic> toJson() =>
      _$WCShippingZoneMethodClassCost91ToJson(this);
}
