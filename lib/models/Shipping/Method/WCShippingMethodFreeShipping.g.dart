// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCShippingMethodFreeShipping.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCShippingMethodFreeShipping _$WCShippingMethodFreeShippingFromJson(
    Map<String, dynamic> json) {
  return WCShippingMethodFreeShipping(
    json['id'] as int,
    json['title'] as String,
    json['method_id'] as String,
    json['cost'] as String,
  );
}

Map<String, dynamic> _$WCShippingMethodFreeShippingToJson(
        WCShippingMethodFreeShipping instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'method_id': instance.methodId,
      'cost': instance.cost,
    };
