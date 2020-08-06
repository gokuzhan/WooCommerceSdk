import 'package:json_annotation/json_annotation.dart';

import 'WCShippingMethodLocations.dart';
import 'WCShippingMethodMethods.dart';

part 'WCShippingMethod.g.dart';

@JsonSerializable()
class WCShippingMethod {
  final int parentId;
  final String name;
  final List<WCShippingMethodLocations> locations;
  final WCShippingMethodMethods methods;

  WCShippingMethod(this.parentId, this.name, this.locations, this.methods);

  factory WCShippingMethod.fromJson(Map<String, dynamic> json) =>
      _$WCShippingMethodFromJson(json);

  Map<String, dynamic> toJson() => _$WCShippingMethodToJson(this);
}
