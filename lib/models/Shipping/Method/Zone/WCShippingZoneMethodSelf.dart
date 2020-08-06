import 'package:json_annotation/json_annotation.dart';

part 'WCShippingZoneMethodSelf.g.dart';

@JsonSerializable()
class WCShippingZoneMethodSelf {
  final String href;

  WCShippingZoneMethodSelf(this.href);

  factory WCShippingZoneMethodSelf.fromJson(Map<String, dynamic> json) =>
      _$WCShippingZoneMethodSelfFromJson(json);

  Map<String, dynamic> toJson() => _$WCShippingZoneMethodSelfToJson(this);
}
