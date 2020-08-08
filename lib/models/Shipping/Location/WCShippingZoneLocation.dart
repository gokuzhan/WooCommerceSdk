import 'package:json_annotation/json_annotation.dart';

import 'WCShippingZoneLocationLinks.dart';

part 'WCShippingZoneLocation.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCShippingZoneLocation {
  final String code;
  final String type;
  final WCShippingZoneLocationLinks links;

  WCShippingZoneLocation(this.code, this.type, this.links);

  factory WCShippingZoneLocation.fromJson(Map<String, dynamic> json) =>
      _$WCShippingZoneLocationFromJson(json);

  Map<String, dynamic> toJson() => _$WCShippingZoneLocationToJson(this);
}
