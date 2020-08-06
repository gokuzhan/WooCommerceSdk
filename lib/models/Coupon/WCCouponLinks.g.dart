// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCCouponLinks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCCouponLinks _$WCCouponLinksFromJson(Map<String, dynamic> json) {
  return WCCouponLinks(
    (json['self'] as List)
        ?.map(
            (e) => e == null ? null : Self.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['collection'] as List)
        ?.map((e) =>
            e == null ? null : Collection.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$WCCouponLinksToJson(WCCouponLinks instance) =>
    <String, dynamic>{
      'self': instance.self,
      'collection': instance.collection,
    };
