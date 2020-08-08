import 'package:json_annotation/json_annotation.dart';

part 'WCShippingZoneMethodNoClassCost.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCShippingZoneMethodNoClassCost {
  final String id;
  final String label;
  final String description;
  final String type;
  final String value;
  final String noClassCostDefault;
  final String tip;
  final String placeholder;

  WCShippingZoneMethodNoClassCost(
      this.id,
      this.label,
      this.description,
      this.type,
      this.value,
      this.noClassCostDefault,
      this.tip,
      this.placeholder);

  factory WCShippingZoneMethodNoClassCost.fromJson(Map<String, dynamic> json) =>
      _$WCShippingZoneMethodNoClassCostFromJson(json);

  Map<String, dynamic> toJson() =>
      _$WCShippingZoneMethodNoClassCostToJson(this);
}
