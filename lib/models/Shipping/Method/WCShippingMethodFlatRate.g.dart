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
    json['method_id'] as String,
    json['cost'] as String,
    json['class_cost'] as String,
    json['calculation_type'] as String,
    json['taxable'] as bool,
    (json['shipping_classes'] as List)
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
      'method_id': instance.methodId,
      'cost': instance.cost,
      'class_cost': instance.classCost,
      'calculation_type': instance.calculationType,
      'taxable': instance.taxable,
      'shipping_classes': instance.shippingClasses,
    };
