// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCShippingMethodLocalPickup.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCShippingMethodLocalPickup _$WCShippingMethodLocalPickupFromJson(
    Map<String, dynamic> json) {
  return WCShippingMethodLocalPickup(
    json['id'] as int,
    json['title'] as String,
    json['method_id'] as String,
    json['taxable'] as bool,
    json['cost'] as String,
  );
}

Map<String, dynamic> _$WCShippingMethodLocalPickupToJson(
        WCShippingMethodLocalPickup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'method_id': instance.methodId,
      'taxable': instance.taxable,
      'cost': instance.cost,
    };
