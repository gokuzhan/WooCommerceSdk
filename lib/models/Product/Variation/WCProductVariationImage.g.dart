// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCProductVariationImage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCProductVariationImage _$WCProductVariationImageFromJson(
    Map<String, dynamic> json) {
  return WCProductVariationImage(
    json['id'] as int,
    json['date_created'] == null
        ? null
        : DateTime.parse(json['date_created'] as String),
    json['date_created_g_m_t'] == null
        ? null
        : DateTime.parse(json['date_created_g_m_t'] as String),
    json['date_modified'] == null
        ? null
        : DateTime.parse(json['date_modified'] as String),
    json['date_modified_g_m_t'] == null
        ? null
        : DateTime.parse(json['date_modified_g_m_t'] as String),
    json['src'] as String,
    json['name'] as String,
    json['alt'] as String,
  );
}

Map<String, dynamic> _$WCProductVariationImageToJson(
        WCProductVariationImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date_created': instance.dateCreated?.toIso8601String(),
      'date_created_g_m_t': instance.dateCreatedGMT?.toIso8601String(),
      'date_modified': instance.dateModified?.toIso8601String(),
      'date_modified_g_m_t': instance.dateModifiedGMT?.toIso8601String(),
      'src': instance.src,
      'name': instance.name,
      'alt': instance.alt,
    };
