// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCShippingZoneMethodClassCosts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCShippingZoneMethodClassCosts _$WCShippingZoneMethodClassCostsFromJson(
    Map<String, dynamic> json) {
  return WCShippingZoneMethodClassCosts(
    json['id'] as String,
    json['label'] as String,
    json['description'] as String,
    json['type'] as String,
    json['value'] as String,
    json['classCostsDefault'] as String,
    json['tip'] as String,
    json['placeholder'] as String,
  );
}

Map<String, dynamic> _$WCShippingZoneMethodClassCostsToJson(
        WCShippingZoneMethodClassCosts instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'description': instance.description,
      'type': instance.type,
      'value': instance.value,
      'classCostsDefault': instance.classCostsDefault,
      'tip': instance.tip,
      'placeholder': instance.placeholder,
    };
