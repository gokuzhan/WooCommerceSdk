import 'package:json_annotation/json_annotation.dart';

part 'WCShippingZoneMethodClassCosts.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCShippingZoneMethodClassCosts {
  final String id;
  final String label;
  final String description;
  final String type;
  final String value;
  final String classCostsDefault;
  final String tip;
  final String placeholder;

  WCShippingZoneMethodClassCosts(
      this.id,
      this.label,
      this.description,
      this.type,
      this.value,
      this.classCostsDefault,
      this.tip,
      this.placeholder);

  factory WCShippingZoneMethodClassCosts.fromJson(Map<String, dynamic> json) =>
      _$WCShippingZoneMethodClassCostsFromJson(json);

  Map<String, dynamic> toJson() => _$WCShippingZoneMethodClassCostsToJson(this);
}
