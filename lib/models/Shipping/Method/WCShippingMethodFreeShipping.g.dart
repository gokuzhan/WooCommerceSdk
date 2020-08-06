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
    json['methodId'] as String,
    json['cost'] as String,
  );
}

Map<String, dynamic> _$WCShippingMethodFreeShippingToJson(
        WCShippingMethodFreeShipping instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'methodId': instance.methodId,
      'cost': instance.cost,
    };
