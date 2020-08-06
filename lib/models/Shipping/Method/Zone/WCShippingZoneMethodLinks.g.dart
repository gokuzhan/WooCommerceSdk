// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCShippingZoneMethodLinks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCShippingZoneMethodLinks _$WCShippingZoneMethodLinksFromJson(
    Map<String, dynamic> json) {
  return WCShippingZoneMethodLinks(
    (json['self'] as List)
        ?.map((e) => e == null
            ? null
            : WCShippingZoneMethodSelf.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['collection'] as List)
        ?.map((e) => e == null
            ? null
            : WCShippingZoneMethodCollection.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    (json['describes'] as List)
        ?.map((e) => e == null
            ? null
            : WCShippingZoneMethodDescribes.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$WCShippingZoneMethodLinksToJson(
        WCShippingZoneMethodLinks instance) =>
    <String, dynamic>{
      'self': instance.self,
      'collection': instance.collection,
      'describes': instance.describes,
    };
