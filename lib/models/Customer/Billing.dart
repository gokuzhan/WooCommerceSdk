import 'package:json_annotation/json_annotation.dart';

part 'Billing.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Billing {
  final String firstName;
  final String lastName;
  final String company;
  final String address1;
  final String address2;
  final String city;
  final String state;
  final String postcode;
  final String country;
  final String email;
  final String phone;

  Billing(
      this.firstName,
      this.lastName,
      this.company,
      this.address1,
      this.address2,
      this.city,
      this.state,
      this.postcode,
      this.country,
      this.email,
      this.phone);

  factory Billing.fromJson(Map<String, dynamic> json) =>
      _$BillingFromJson(json);

  Map<String, dynamic> toJson() => _$BillingToJson(this);
}
