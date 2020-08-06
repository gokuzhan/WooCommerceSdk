import 'package:json_annotation/json_annotation.dart';

part 'WCOrderPayloadShipping.g.dart';

@JsonSerializable()
class WCOrderPayloadShipping {
  final String firstName;
  final String lastName;
  final String address1;
  final String address2;
  final String city;
  final String state;
  final String postcode;
  final String country;

  WCOrderPayloadShipping(this.firstName, this.lastName, this.address1,
      this.address2, this.city, this.state, this.postcode, this.country);

  factory WCOrderPayloadShipping.fromJson(Map<String, dynamic> json) =>
      _$WCOrderPayloadShippingFromJson(json);

  Map<String, dynamic> toJson() => _$WCOrderPayloadShippingToJson(this);
}
