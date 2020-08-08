// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCShippingZoneMethodClassCost91.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCShippingZoneMethodClassCost91 _$WCShippingZoneMethodClassCost91FromJson(
    Map<String, dynamic> json) {
  return WCShippingZoneMethodClassCost91(
    json['id'] as String,
    json['label'] as String,
    json['description'] as String,
    json['type'] as String,
    json['value'] as String,
    json['class_cost91_default'] as String,
    json['tip'] as String,
    json['placeholder'] as String,
  );
}

Map<String, dynamic> _$WCShippingZoneMethodClassCost91ToJson(
        WCShippingZoneMethodClassCost91 instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'description': instance.description,
      'type': instance.type,
      'value': instance.value,
      'class_cost91_default': instance.classCost91Default,
      'tip': instance.tip,
      'placeholder': instance.placeholder,
    };
