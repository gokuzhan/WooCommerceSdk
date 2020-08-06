import 'package:json_annotation/json_annotation.dart';

part 'WCShippingZoneMethodCost.g.dart';

@JsonSerializable()
class WCShippingZoneMethodCost {
  final String id;
  final String label;
  final String description;
  final String type;
  final String value;
  final String costDefault;
  final String tip;
  final String placeholder;

  WCShippingZoneMethodCost(this.id, this.label, this.description, this.type,
      this.value, this.costDefault, this.tip, this.placeholder);

  factory WCShippingZoneMethodCost.fromJson(Map<String, dynamic> json) =>
      _$WCShippingZoneMethodCostFromJson(json);

  Map<String, dynamic> toJson() => _$WCShippingZoneMethodCostToJson(this);
}
