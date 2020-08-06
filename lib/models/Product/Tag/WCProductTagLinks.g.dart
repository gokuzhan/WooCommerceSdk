// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCProductTagLinks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCProductTagLinks _$WCProductTagLinksFromJson(Map<String, dynamic> json) {
  return WCProductTagLinks(
    (json['self'] as List)
        ?.map((e) => e == null
            ? null
            : WCProductTagSelf.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['collection'] as List)
        ?.map((e) => e == null
            ? null
            : WCProductTagCollection.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$WCProductTagLinksToJson(WCProductTagLinks instance) =>
    <String, dynamic>{
      'self': instance.self,
      'collection': instance.collection,
    };
