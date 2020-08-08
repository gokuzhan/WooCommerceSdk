// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCShippingMethodMethods.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCShippingMethodMethods _$WCShippingMethodMethodsFromJson(
    Map<String, dynamic> json) {
  return WCShippingMethodMethods(
    (json['free_shipping'] as List)
        ?.map((e) => e == null
            ? null
            : WCShippingMethodFreeShipping.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['flat_rate'] as List)
        ?.map((e) => e == null
            ? null
            : WCShippingMethodFlatRate.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['local_pickup'] as List)
        ?.map((e) => e == null
            ? null
            : WCShippingMethodLocalPickup.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$WCShippingMethodMethodsToJson(
        WCShippingMethodMethods instance) =>
    <String, dynamic>{
      'free_shipping': instance.freeShipping,
      'flat_rate': instance.flatRate,
      'local_pickup': instance.localPickup,
    };
