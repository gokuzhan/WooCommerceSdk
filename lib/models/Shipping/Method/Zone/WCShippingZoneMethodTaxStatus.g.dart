// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCShippingZoneMethodTaxStatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCShippingZoneMethodTaxStatus _$WCShippingZoneMethodTaxStatusFromJson(
    Map<String, dynamic> json) {
  return WCShippingZoneMethodTaxStatus(
    json['id'] as String,
    json['label'] as String,
    json['description'] as String,
    json['type'] as String,
    json['value'] as String,
    json['taxDefault'] as String,
    json['tip'] as String,
    json['placeholder'] as String,
    json['options'] == null
        ? null
        : WCShippingZoneMethodOptions.fromJson(
            json['options'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WCShippingZoneMethodTaxStatusToJson(
        WCShippingZoneMethodTaxStatus instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'description': instance.description,
      'type': instance.type,
      'value': instance.value,
      'taxDefault': instance.taxDefault,
      'tip': instance.tip,
      'placeholder': instance.placeholder,
      'options': instance.options,
    };
