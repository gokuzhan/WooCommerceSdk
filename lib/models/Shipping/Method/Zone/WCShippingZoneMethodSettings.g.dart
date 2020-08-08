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
    json['tax_status'] == null
        ? null
        : WCShippingZoneMethodTaxStatus.fromJson(
            json['tax_status'] as Map<String, dynamic>),
    json['cost'] == null
        ? null
        : WCShippingZoneMethodCost.fromJson(
            json['cost'] as Map<String, dynamic>),
    json['class_costs'] == null
        ? null
        : WCShippingZoneMethodClassCosts.fromJson(
            json['class_costs'] as Map<String, dynamic>),
    json['class_cost92'] == null
        ? null
        : WCShippingZoneMethodClassCost92.fromJson(
            json['class_cost92'] as Map<String, dynamic>),
    json['class_cost91'] == null
        ? null
        : WCShippingZoneMethodClassCost91.fromJson(
            json['class_cost91'] as Map<String, dynamic>),
    json['no_class_cost'] == null
        ? null
        : WCShippingZoneMethodNoClassCost.fromJson(
            json['no_class_cost'] as Map<String, dynamic>),
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
      'tax_status': instance.taxStatus,
      'cost': instance.cost,
      'class_costs': instance.classCosts,
      'class_cost92': instance.classCost92,
      'class_cost91': instance.classCost91,
      'no_class_cost': instance.noClassCost,
      'type': instance.type,
    };
