// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCProductReviewLinks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCProductReviewLinks _$WCProductReviewLinksFromJson(Map<String, dynamic> json) {
  return WCProductReviewLinks(
    (json['self'] as List)
        ?.map((e) => e == null
            ? null
            : WCProductReviewSelf.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['collection'] as List)
        ?.map((e) => e == null
            ? null
            : WCProductReviewCollection.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['up'] as List)
        ?.map((e) => e == null
            ? null
            : WCProductReviewUp.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$WCProductReviewLinksToJson(
        WCProductReviewLinks instance) =>
    <String, dynamic>{
      'self': instance.self,
      'collection': instance.collection,
      'up': instance.up,
    };
