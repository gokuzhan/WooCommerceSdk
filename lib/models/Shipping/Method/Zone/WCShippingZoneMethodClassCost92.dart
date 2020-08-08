import 'package:json_annotation/json_annotation.dart';

part 'WCShippingZoneMethodClassCost92.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCShippingZoneMethodClassCost92 {
  final String id;
  final String label;
  final String description;
  final String type;
  final String value;
  final String classCost92Default;
  final String tip;
  final String placeholder;

  WCShippingZoneMethodClassCost92(
      this.id,
      this.label,
      this.description,
      this.type,
      this.value,
      this.classCost92Default,
      this.tip,
      this.placeholder);

  factory WCShippingZoneMethodClassCost92.fromJson(Map<String, dynamic> json) =>
      _$WCShippingZoneMethodClassCost92FromJson(json);

  Map<String, dynamic> toJson() =>
      _$WCShippingZoneMethodClassCost92ToJson(this);
}
