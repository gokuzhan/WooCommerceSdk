// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCShippingZone.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCShippingZone _$WCShippingZoneFromJson(Map<String, dynamic> json) {
  return WCShippingZone(
    json['id'] as int,
    json['name'] as String,
    json['order'] as int,
    json['links'] == null
        ? null
        : WCShippingZoneLinks.fromJson(json['links'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WCShippingZoneToJson(WCShippingZone instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'order': instance.order,
      'links': instance.links,
    };
