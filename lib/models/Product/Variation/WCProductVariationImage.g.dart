// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCProductVariationImage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCProductVariationImage _$WCProductVariationImageFromJson(
    Map<String, dynamic> json) {
  return WCProductVariationImage(
    json['id'] as int,
    json['dateCreated'] == null
        ? null
        : DateTime.parse(json['dateCreated'] as String),
    json['dateCreatedGMT'] == null
        ? null
        : DateTime.parse(json['dateCreatedGMT'] as String),
    json['dateModified'] == null
        ? null
        : DateTime.parse(json['dateModified'] as String),
    json['dateModifiedGMT'] == null
        ? null
        : DateTime.parse(json['dateModifiedGMT'] as String),
    json['src'] as String,
    json['name'] as String,
    json['alt'] as String,
  );
}

Map<String, dynamic> _$WCProductVariationImageToJson(
        WCProductVariationImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateCreated': instance.dateCreated?.toIso8601String(),
      'dateCreatedGMT': instance.dateCreatedGMT?.toIso8601String(),
      'dateModified': instance.dateModified?.toIso8601String(),
      'dateModifiedGMT': instance.dateModifiedGMT?.toIso8601String(),
      'src': instance.src,
      'name': instance.name,
      'alt': instance.alt,
    };
