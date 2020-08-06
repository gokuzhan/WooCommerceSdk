// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCShippingZoneMethodCost.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCShippingZoneMethodCost _$WCShippingZoneMethodCostFromJson(
    Map<String, dynamic> json) {
  return WCShippingZoneMethodCost(
    json['id'] as String,
    json['label'] as String,
    json['description'] as String,
    json['type'] as String,
    json['value'] as String,
    json['costDefault'] as String,
    json['tip'] as String,
    json['placeholder'] as String,
  );
}

Map<String, dynamic> _$WCShippingZoneMethodCostToJson(
        WCShippingZoneMethodCost instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'description': instance.description,
      'type': instance.type,
      'value': instance.value,
      'costDefault': instance.costDefault,
      'tip': instance.tip,
      'placeholder': instance.placeholder,
    };
