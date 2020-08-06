// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCShippingMethodFlatRate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCShippingMethodFlatRate _$WCShippingMethodFlatRateFromJson(
    Map<String, dynamic> json) {
  return WCShippingMethodFlatRate(
    json['id'] as int,
    json['title'] as String,
    json['methodId'] as String,
    json['cost'] as String,
    json['classCost'] as String,
    json['calculationType'] as String,
    json['taxable'] as bool,
    (json['shippingClasses'] as List)
        ?.map((e) => e == null
            ? null
            : WCShippingMethodShippingClasses.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$WCShippingMethodFlatRateToJson(
        WCShippingMethodFlatRate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'methodId': instance.methodId,
      'cost': instance.cost,
      'classCost': instance.classCost,
      'calculationType': instance.calculationType,
      'taxable': instance.taxable,
      'shippingClasses': instance.shippingClasses,
    };
