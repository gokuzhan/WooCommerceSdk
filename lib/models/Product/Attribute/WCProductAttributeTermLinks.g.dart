// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCProductAttributeTermLinks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCProductAttributeTermLinks _$WCProductAttributeTermLinksFromJson(
    Map<String, dynamic> json) {
  return WCProductAttributeTermLinks(
    (json['self'] as List)
        ?.map((e) => e == null
            ? null
            : WCProductAttributeTermSelf.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['collection'] as List)
        ?.map((e) => e == null
            ? null
            : WCProductAttributeTermCollection.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$WCProductAttributeTermLinksToJson(
        WCProductAttributeTermLinks instance) =>
    <String, dynamic>{
      'self': instance.self,
      'collection': instance.collection,
    };
