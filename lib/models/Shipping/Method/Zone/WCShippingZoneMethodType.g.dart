// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCShippingZoneMethodType.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCShippingZoneMethodType _$WCShippingZoneMethodTypeFromJson(
    Map<String, dynamic> json) {
  return WCShippingZoneMethodType(
    json['id'] as String,
    json['label'] as String,
    json['description'] as String,
    json['type'] as String,
    json['value'] as String,
    json['type_default'] as String,
    json['tip'] as String,
    json['placeholder'] as String,
    json['options'] == null
        ? null
        : WCShippingZoneMethodOptions.fromJson(
            json['options'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WCShippingZoneMethodTypeToJson(
        WCShippingZoneMethodType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'description': instance.description,
      'type': instance.type,
      'value': instance.value,
      'type_default': instance.typeDefault,
      'tip': instance.tip,
      'placeholder': instance.placeholder,
      'options': instance.options,
    };
