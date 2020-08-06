// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCShippingMethodMethods.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCShippingMethodMethods _$WCShippingMethodMethodsFromJson(
    Map<String, dynamic> json) {
  return WCShippingMethodMethods(
    (json['freeShipping'] as List)
        ?.map((e) => e == null
            ? null
            : WCShippingMethodFreeShipping.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['flatRate'] as List)
        ?.map((e) => e == null
            ? null
            : WCShippingMethodFlatRate.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['localPickup'] as List)
        ?.map((e) => e == null
            ? null
            : WCShippingMethodLocalPickup.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$WCShippingMethodMethodsToJson(
        WCShippingMethodMethods instance) =>
    <String, dynamic>{
      'freeShipping': instance.freeShipping,
      'flatRate': instance.flatRate,
      'localPickup': instance.localPickup,
    };
