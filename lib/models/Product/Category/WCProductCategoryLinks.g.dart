// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCProductCategoryLinks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCProductCategoryLinks _$WCProductCategoryLinksFromJson(
    Map<String, dynamic> json) {
  return WCProductCategoryLinks(
    (json['self'] as List)
        ?.map((e) => e == null
            ? null
            : WCProductCategorySelf.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['collection'] as List)
        ?.map((e) => e == null
            ? null
            : WCProductCategoryCollection.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$WCProductCategoryLinksToJson(
        WCProductCategoryLinks instance) =>
    <String, dynamic>{
      'self': instance.self,
      'collection': instance.collection,
    };
