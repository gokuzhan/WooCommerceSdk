import 'package:json_annotation/json_annotation.dart';

part 'WCShippingZoneMethodOptions.g.dart';

@JsonSerializable()
class WCShippingZoneMethodOptions {
  final String taxable;
  final String none;

  WCShippingZoneMethodOptions(this.taxable, this.none);

  factory WCShippingZoneMethodOptions.fromJson(Map<String, dynamic> json) =>
      _$WCShippingZoneMethodOptionsFromJson(json);

  Map<String, dynamic> toJson() => _$WCShippingZoneMethodOptionsToJson(this);
}
