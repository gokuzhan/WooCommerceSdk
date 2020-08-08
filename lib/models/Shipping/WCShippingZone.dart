import 'package:json_annotation/json_annotation.dart';

import 'WCShippingZoneLinks.dart';

part 'WCShippingZone.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCShippingZone {
  final int id;
  final String name;
  final int order;
  final WCShippingZoneLinks links;

  WCShippingZone(this.id, this.name, this.order, this.links);

  factory WCShippingZone.fromJson(Map<String, dynamic> json) =>
      _$WCShippingZoneFromJson(json);

  Map<String, dynamic> toJson() => _$WCShippingZoneToJson(this);
}
