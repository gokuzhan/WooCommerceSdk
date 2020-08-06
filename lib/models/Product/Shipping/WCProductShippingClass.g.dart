// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCProductShippingClass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCProductShippingClass _$WCProductShippingClassFromJson(
    Map<String, dynamic> json) {
  return WCProductShippingClass(
    json['id'] as int,
    json['name'] as String,
    json['slug'] as String,
    json['description'] as String,
    json['count'] as int,
    json['links'] == null
        ? null
        : WCProductShippingClassLinks.fromJson(
            json['links'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WCProductShippingClassToJson(
        WCProductShippingClass instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'count': instance.count,
      'links': instance.links,
    };
