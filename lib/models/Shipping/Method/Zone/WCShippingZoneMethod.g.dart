// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCShippingZoneMethod.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCShippingZoneMethod _$WCShippingZoneMethodFromJson(Map<String, dynamic> json) {
  return WCShippingZoneMethod(
    json['instance_id'] as int,
    json['title'] as String,
    json['order'] as int,
    json['enabled'] as bool,
    json['method_id'] as String,
    json['method_title'] as String,
    json['method_description'] as String,
    json['settings'] == null
        ? null
        : WCShippingZoneMethodSettings.fromJson(
            json['settings'] as Map<String, dynamic>),
    json['links'] == null
        ? null
        : WCShippingZoneMethodLinks.fromJson(
            json['links'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WCShippingZoneMethodToJson(
        WCShippingZoneMethod instance) =>
    <String, dynamic>{
      'instance_id': instance.instanceId,
      'title': instance.title,
      'order': instance.order,
      'enabled': instance.enabled,
      'method_id': instance.methodId,
      'method_title': instance.methodTitle,
      'method_description': instance.methodDescription,
      'settings': instance.settings,
      'links': instance.links,
    };
