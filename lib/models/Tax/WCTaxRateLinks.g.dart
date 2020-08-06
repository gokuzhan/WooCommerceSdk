// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCTaxRateLinks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCTaxRateLinks _$WCTaxRateLinksFromJson(Map<String, dynamic> json) {
  return WCTaxRateLinks(
    (json['self'] as List)
        ?.map((e) => e == null
            ? null
            : WCTaxRateSelf.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['collection'] as List)
        ?.map((e) => e == null
            ? null
            : WCTaxRateCollection.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$WCTaxRateLinksToJson(WCTaxRateLinks instance) =>
    <String, dynamic>{
      'self': instance.self,
      'collection': instance.collection,
    };
