// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCProductAttribute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCProductAttribute _$WCProductAttributeFromJson(Map<String, dynamic> json) {
  return WCProductAttribute(
    json['id'] as int,
    json['name'] as String,
    json['slug'] as String,
    json['type'] as String,
    json['order_by'] as String,
    json['has_archives'] as bool,
    json['links'] == null
        ? null
        : WCProductAttributeTermLinks.fromJson(
            json['links'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WCProductAttributeToJson(WCProductAttribute instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'type': instance.type,
      'order_by': instance.orderBy,
      'has_archives': instance.hasArchives,
      'links': instance.links,
    };
