import 'package:json_annotation/json_annotation.dart';

part 'WCShippingZoneMethodDescribes.g.dart';

@JsonSerializable()
class WCShippingZoneMethodDescribes {
  final String href;

  WCShippingZoneMethodDescribes(this.href);

  factory WCShippingZoneMethodDescribes.fromJson(Map<String, dynamic> json) =>
      _$WCShippingZoneMethodDescribesFromJson(json);

  Map<String, dynamic> toJson() => _$WCShippingZoneMethodDescribesToJson(this);
}
