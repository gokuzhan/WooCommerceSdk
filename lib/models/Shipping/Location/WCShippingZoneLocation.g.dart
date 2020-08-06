// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCShippingZoneLocation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCShippingZoneLocation _$WCShippingZoneLocationFromJson(
    Map<String, dynamic> json) {
  return WCShippingZoneLocation(
    json['code'] as String,
    json['type'] as String,
    json['links'] == null
        ? null
        : WCShippingZoneLocationLinks.fromJson(
            json['links'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WCShippingZoneLocationToJson(
        WCShippingZoneLocation instance) =>
    <String, dynamic>{
      'code': instance.code,
      'type': instance.type,
      'links': instance.links,
    };
