// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCShippingZoneMethod.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCShippingZoneMethod _$WCShippingZoneMethodFromJson(Map<String, dynamic> json) {
  return WCShippingZoneMethod(
    json['instanceId'] as int,
    json['title'] as String,
    json['order'] as int,
    json['enabled'] as bool,
    json['methodId'] as String,
    json['methodTitle'] as String,
    json['methodDescription'] as String,
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
      'instanceId': instance.instanceId,
      'title': instance.title,
      'order': instance.order,
      'enabled': instance.enabled,
      'methodId': instance.methodId,
      'methodTitle': instance.methodTitle,
      'methodDescription': instance.methodDescription,
      'settings': instance.settings,
      'links': instance.links,
    };
