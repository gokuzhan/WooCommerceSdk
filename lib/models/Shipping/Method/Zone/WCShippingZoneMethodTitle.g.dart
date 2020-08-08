// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCShippingZoneMethodTitle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCShippingZoneMethodTitle _$WCShippingZoneMethodTitleFromJson(
    Map<String, dynamic> json) {
  return WCShippingZoneMethodTitle(
    json['id'] as String,
    json['label'] as String,
    json['description'] as String,
    json['type'] as String,
    json['value'] as String,
    json['title_default'] as String,
    json['tip'] as String,
    json['placeholder'] as String,
  );
}

Map<String, dynamic> _$WCShippingZoneMethodTitleToJson(
        WCShippingZoneMethodTitle instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'description': instance.description,
      'type': instance.type,
      'value': instance.value,
      'title_default': instance.titleDefault,
      'tip': instance.tip,
      'placeholder': instance.placeholder,
    };
