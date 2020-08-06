import 'package:json_annotation/json_annotation.dart';

import '../Links.dart';
import 'Billing.dart';
import 'Shipping.dart';
import 'WCCustomerMetaData.dart';

part 'WCCustomer.g.dart';

@JsonSerializable()
class WCCustomer {
  final int id;
  final String dateCreated;
  final String dateCreatedGmt;
  final String dateModified;
  final String dateModifiedGmt;
  final String email;
  final String firstName;
  final String lastName;
  final String role;
  final String username;
  final String password;
  final Billing billing;
  final Shipping shipping;
  final bool isPayingCustomer;
  final String avatarUrl;
  final List<WCCustomerMetaData> metaData;
  final Links links;

  WCCustomer(
      this.id,
      this.dateCreated,
      this.dateCreatedGmt,
      this.dateModified,
      this.dateModifiedGmt,
      this.email,
      this.firstName,
      this.lastName,
      this.role,
      this.username,
      this.password,
      this.billing,
      this.shipping,
      this.isPayingCustomer,
      this.avatarUrl,
      this.metaData,
      this.links);

  factory WCCustomer.fromJson(Map<String, dynamic> json) =>
      _$WCCustomerFromJson(json);

  Map<String, dynamic> toJson() => _$WCCustomerToJson(this);
}
