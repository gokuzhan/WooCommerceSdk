import 'package:json_annotation/json_annotation.dart';

part 'Shipping.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Shipping {
  final String firstName;
  final String lastName;
  final String company;
  final String address1;
  final String address2;
  final String city;
  final String state;
  final String postcode;
  final String country;

  Shipping(this.firstName, this.lastName, this.company, this.address1,
      this.address2, this.city, this.state, this.postcode, this.country);

  factory Shipping.fromJson(Map<String, dynamic> json) =>
      _$ShippingFromJson(json);

  Map<String, dynamic> toJson() => _$ShippingToJson(this);
}
