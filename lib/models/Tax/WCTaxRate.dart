import 'package:json_annotation/json_annotation.dart';

import 'WCTaxRateLinks.dart';

part 'WCTaxRate.g.dart';

@JsonSerializable()
class WCTaxRate {
  final int id;
  final String country;
  final String state;
  final String postcode;
  final String city;
  final String rate;
  final String name;
  final int priority;
  final bool compound;
  final bool shipping;
  final int order;
  final String taxClass;
  final WCTaxRateLinks links;

  WCTaxRate(
      this.id,
      this.country,
      this.state,
      this.postcode,
      this.city,
      this.rate,
      this.name,
      this.priority,
      this.compound,
      this.shipping,
      this.order,
      this.taxClass,
      this.links);

  factory WCTaxRate.fromJson(Map<String, dynamic> json) =>
      _$WCTaxRateFromJson(json);

  Map<String, dynamic> toJson() => _$WCTaxRateToJson(this);
}
