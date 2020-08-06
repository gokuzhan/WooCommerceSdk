import 'package:json_annotation/json_annotation.dart';

import 'WCShippingMethodFlatRate.dart';
import 'WCShippingMethodFreeShipping.dart';
import 'WCShippingMethodLocalPickup.dart';

part 'WCShippingMethodMethods.g.dart';

@JsonSerializable()
class WCShippingMethodMethods {
  final List<WCShippingMethodFreeShipping> freeShipping;
  final List<WCShippingMethodFlatRate> flatRate;
  final List<WCShippingMethodLocalPickup> localPickup;

  WCShippingMethodMethods(this.freeShipping, this.flatRate, this.localPickup);

  factory WCShippingMethodMethods.fromJson(Map<String, dynamic> json) =>
      _$WCShippingMethodMethodsFromJson(json);

  Map<String, dynamic> toJson() => _$WCShippingMethodMethodsToJson(this);
}
