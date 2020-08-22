import 'package:json_annotation/json_annotation.dart';

part 'WCShippingAddress.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCShippingAddress {
  final String firstName;
  final String lastName;
  final String address1;
  final String address2;
  final String city;
  final String state;
  final String postcode;
  final String country;

  WCShippingAddress(this.firstName, this.lastName, this.address1, this.address2,
      this.city, this.state, this.postcode, this.country);

  factory WCShippingAddress.fromJson(Map<String, dynamic> json) =>
      _$WCShippingAddressFromJson(json);

  Map<String, dynamic> toJson() => _$WCShippingAddressToJson(this);
}
