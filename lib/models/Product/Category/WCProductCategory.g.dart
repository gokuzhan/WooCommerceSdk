// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCProductCategory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCProductCategory _$WCProductCategoryFromJson(Map<String, dynamic> json) {
  return WCProductCategory(
    json['id'] as int,
    json['name'] as String,
    json['slug'] as String,
    json['parent'] as int,
    json['description'] as String,
    json['display'] as String,
    json['image'] == null
        ? null
        : WCProductCategoryImage.fromJson(
            json['image'] as Map<String, dynamic>),
    json['menu_order'] as int,
    json['count'] as int,
    json['links'] == null
        ? null
        : WCProductCategoryLinks.fromJson(
            json['links'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WCProductCategoryToJson(WCProductCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'parent': instance.parent,
      'description': instance.description,
      'display': instance.display,
      'image': instance.image,
      'menu_order': instance.menuOrder,
      'count': instance.count,
      'links': instance.links,
    };
