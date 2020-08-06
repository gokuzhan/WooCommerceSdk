// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCShippingZoneMethodSettings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCShippingZoneMethodSettings _$WCShippingZoneMethodSettingsFromJson(
    Map<String, dynamic> json) {
  return WCShippingZoneMethodSettings(
    json['title'] == null
        ? null
        : WCShippingZoneMethodTitle.fromJson(
            json['title'] as Map<String, dynamic>),
    json['taxStatus'] == null
        ? null
        : WCShippingZoneMethodTaxStatus.fromJson(
            json['taxStatus'] as Map<String, dynamic>),
    json['cost'] == null
        ? null
        : WCShippingZoneMethodCost.fromJson(
            json['cost'] as Map<String, dynamic>),
    json['classCosts'] == null
        ? null
        : WCShippingZoneMethodClassCosts.fromJson(
            json['classCosts'] as Map<String, dynamic>),
    json['classCost92'] == null
        ? null
        : WCShippingZoneMethodClassCost92.fromJson(
            json['classCost92'] as Map<String, dynamic>),
    json['classCost91'] == null
        ? null
        : WCShippingZoneMethodClassCost91.fromJson(
            json['classCost91'] as Map<String, dynamic>),
    json['noClassCost'] == null
        ? null
        : WCShippingZoneMethodNoClassCost.fromJson(
            json['noClassCost'] as Map<String, dynamic>),
    json['type'] == null
        ? null
        : WCShippingZoneMethodType.fromJson(
            json['type'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WCShippingZoneMethodSettingsToJson(
        WCShippingZoneMethodSettings instance) =>
    <String, dynamic>{
      'title': instance.title,
      'taxStatus': instance.taxStatus,
      'cost': instance.cost,
      'classCosts': instance.classCosts,
      'classCost92': instance.classCost92,
      'classCost91': instance.classCost91,
      'noClassCost': instance.noClassCost,
      'type': instance.type,
    };
