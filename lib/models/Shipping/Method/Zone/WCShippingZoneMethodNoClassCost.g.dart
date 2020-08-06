// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCShippingZoneMethodNoClassCost.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCShippingZoneMethodNoClassCost _$WCShippingZoneMethodNoClassCostFromJson(
    Map<String, dynamic> json) {
  return WCShippingZoneMethodNoClassCost(
    json['id'] as String,
    json['label'] as String,
    json['description'] as String,
    json['type'] as String,
    json['value'] as String,
    json['noClassCostDefault'] as String,
    json['tip'] as String,
    json['placeholder'] as String,
  );
}

Map<String, dynamic> _$WCShippingZoneMethodNoClassCostToJson(
        WCShippingZoneMethodNoClassCost instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'description': instance.description,
      'type': instance.type,
      'value': instance.value,
      'noClassCostDefault': instance.noClassCostDefault,
      'tip': instance.tip,
      'placeholder': instance.placeholder,
    };
