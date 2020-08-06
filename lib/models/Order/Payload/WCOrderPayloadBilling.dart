import 'package:json_annotation/json_annotation.dart';

part 'WCOrderPayloadBilling.g.dart';

@JsonSerializable()
class WCOrderPayloadBilling {
  final String firstName;
  final String lastName;
  final String address1;
  final String address2;
  final String city;
  final String state;
  final String postcode;
  final String country;
  final String email;
  final String phone;

  WCOrderPayloadBilling(
      this.firstName,
      this.lastName,
      this.address1,
      this.address2,
      this.city,
      this.state,
      this.postcode,
      this.country,
      this.email,
      this.phone);

  factory WCOrderPayloadBilling.fromJson(Map<String, dynamic> json) =>
      _$WCOrderPayloadBillingFromJson(json);

  Map<String, dynamic> toJson() => _$WCOrderPayloadBillingToJson(this);
}
