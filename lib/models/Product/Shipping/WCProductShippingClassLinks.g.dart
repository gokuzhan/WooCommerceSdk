// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCProductShippingClassLinks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCProductShippingClassLinks _$WCProductShippingClassLinksFromJson(
    Map<String, dynamic> json) {
  return WCProductShippingClassLinks(
    (json['self'] as List)
        ?.map((e) => e == null
            ? null
            : WCProductShippingClassSelf.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['collection'] as List)
        ?.map((e) => e == null
            ? null
            : WCProductShippingClassCollection.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$WCProductShippingClassLinksToJson(
        WCProductShippingClassLinks instance) =>
    <String, dynamic>{
      'self': instance.self,
      'collection': instance.collection,
    };
