import 'package:json_annotation/json_annotation.dart';

part 'WCShippingMethodFreeShipping.g.dart';

@JsonSerializable()
class WCShippingMethodFreeShipping {
  final int id;
  final String title;
  final String methodId;
  final String cost;

  WCShippingMethodFreeShipping(this.id, this.title, this.methodId, this.cost);

  factory WCShippingMethodFreeShipping.fromJson(Map<String, dynamic> json) =>
      _$WCShippingMethodFreeShippingFromJson(json);

  Map<String, dynamic> toJson() => _$WCShippingMethodFreeShippingToJson(this);
}
