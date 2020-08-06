// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCShippingZoneLinks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCShippingZoneLinks _$WCShippingZoneLinksFromJson(Map<String, dynamic> json) {
  return WCShippingZoneLinks(
    (json['self'] as List)
        ?.map((e) => e == null
            ? null
            : WCShippingZoneSelf.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['collection'] as List)
        ?.map((e) => e == null
            ? null
            : WCShippingZoneCollection.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['describedby'] as List)
        ?.map((e) =>
            e == null ? null : Describedby.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$WCShippingZoneLinksToJson(
        WCShippingZoneLinks instance) =>
    <String, dynamic>{
      'self': instance.self,
      'collection': instance.collection,
      'describedby': instance.describedby,
    };
