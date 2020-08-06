// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCProductTag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCProductTag _$WCProductTagFromJson(Map<String, dynamic> json) {
  return WCProductTag(
    json['id'] as int,
    json['name'] as String,
    json['slug'] as String,
    json['description'] as String,
    json['count'] as int,
    json['lLinks'] == null
        ? null
        : WCProductTagLinks.fromJson(json['lLinks'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WCProductTagToJson(WCProductTag instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'count': instance.count,
      'lLinks': instance.lLinks,
    };
