// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCShippingZoneLocationLinks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCShippingZoneLocationLinks _$WCShippingZoneLocationLinksFromJson(
    Map<String, dynamic> json) {
  return WCShippingZoneLocationLinks(
    (json['collection'] as List)
        ?.map((e) => e == null
            ? null
            : WCShippingZoneLocationCollection.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    (json['describes'] as List)
        ?.map((e) => e == null
            ? null
            : WCShippingZoneLocationDescribes.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$WCShippingZoneLocationLinksToJson(
        WCShippingZoneLocationLinks instance) =>
    <String, dynamic>{
      'collection': instance.collection,
      'describes': instance.describes,
    };
