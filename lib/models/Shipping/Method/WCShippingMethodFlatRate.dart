import 'package:json_annotation/json_annotation.dart';

import 'WCShippingMethodShippingClasses.dart';

part 'WCShippingMethodFlatRate.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCShippingMethodFlatRate {
  final int id;
  final String title;
  final String methodId;
  final String cost;
  final String classCost;
  final String calculationType;
  final bool taxable;
  final List<WCShippingMethodShippingClasses> shippingClasses;

  WCShippingMethodFlatRate(this.id, this.title, this.methodId, this.cost,
      this.classCost, this.calculationType, this.taxable, this.shippingClasses);

  factory WCShippingMethodFlatRate.fromJson(Map<String, dynamic> json) =>
      _$WCShippingMethodFlatRateFromJson(json);

  Map<String, dynamic> toJson() => _$WCShippingMethodFlatRateToJson(this);
}
