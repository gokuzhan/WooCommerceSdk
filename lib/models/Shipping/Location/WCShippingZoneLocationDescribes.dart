import 'package:json_annotation/json_annotation.dart';

part 'WCShippingZoneLocationDescribes.g.dart';

@JsonSerializable()
class WCShippingZoneLocationDescribes {
  final String href;

  WCShippingZoneLocationDescribes(this.href);

  factory WCShippingZoneLocationDescribes.fromJson(Map<String, dynamic> json) =>
      _$WCShippingZoneLocationDescribesFromJson(json);

  Map<String, dynamic> toJson() =>
      _$WCShippingZoneLocationDescribesToJson(this);
}
