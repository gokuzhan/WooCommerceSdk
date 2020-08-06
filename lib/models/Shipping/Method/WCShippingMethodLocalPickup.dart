import 'package:json_annotation/json_annotation.dart';

part 'WCShippingMethodLocalPickup.g.dart';

@JsonSerializable()
class WCShippingMethodLocalPickup {
  final int id;
  final String title;
  final String methodId;
  final bool taxable;
  final String cost;

  WCShippingMethodLocalPickup(
      this.id, this.title, this.methodId, this.taxable, this.cost);

  factory WCShippingMethodLocalPickup.fromJson(Map<String, dynamic> json) =>
      _$WCShippingMethodLocalPickupFromJson(json);

  Map<String, dynamic> toJson() => _$WCShippingMethodLocalPickupToJson(this);
}
