// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCProductAttributeTerm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCProductAttributeTerm _$WCProductAttributeTermFromJson(
    Map<String, dynamic> json) {
  return WCProductAttributeTerm(
    json['id'] as int,
    json['name'] as String,
    json['slug'] as String,
    json['description'] as String,
    json['menu_order'] as int,
    json['count'] as int,
    json['links'] == null
        ? null
        : WCProductAttributeTermLinks.fromJson(
            json['links'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WCProductAttributeTermToJson(
        WCProductAttributeTerm instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'menu_order': instance.menuOrder,
      'count': instance.count,
      'links': instance.links,
    };
