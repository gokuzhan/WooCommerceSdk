// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCTaxClassLinks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCTaxClassLinks _$WCTaxClassLinksFromJson(Map<String, dynamic> json) {
  return WCTaxClassLinks(
    (json['collection'] as List)
        ?.map((e) => e == null
            ? null
            : WCTaxClassCollection.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$WCTaxClassLinksToJson(WCTaxClassLinks instance) =>
    <String, dynamic>{
      'collection': instance.collection,
    };
