import 'package:json_annotation/json_annotation.dart';

part 'WCShippingZoneMethodTitle.g.dart';

@JsonSerializable()
class WCShippingZoneMethodTitle {
  final String id;
  final String label;
  final String description;
  final String type;
  final String value;
  final String titleDefault;
  final String tip;
  final String placeholder;

  WCShippingZoneMethodTitle(this.id, this.label, this.description, this.type,
      this.value, this.titleDefault, this.tip, this.placeholder);

  factory WCShippingZoneMethodTitle.fromJson(Map<String, dynamic> json) =>
      _$WCShippingZoneMethodTitleFromJson(json);

  Map<String, dynamic> toJson() => _$WCShippingZoneMethodTitleToJson(this);
}
