// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCTaxClass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCTaxClass _$WCTaxClassFromJson(Map<String, dynamic> json) {
  return WCTaxClass(
    json['slug'] as String,
    json['name'] as String,
    json['links'] == null
        ? null
        : WCTaxClassLinks.fromJson(json['links'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WCTaxClassToJson(WCTaxClass instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'name': instance.name,
      'links': instance.links,
    };
