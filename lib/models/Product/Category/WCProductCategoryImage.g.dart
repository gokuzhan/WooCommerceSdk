// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCProductCategoryImage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCProductCategoryImage _$WCProductCategoryImageFromJson(
    Map<String, dynamic> json) {
  return WCProductCategoryImage(
    json['id'] as int,
    json['date_created'] as String,
    json['date_created_gmt'] as String,
    json['date_modified'] as String,
    json['date_modified_gmt'] as String,
    json['src'] as String,
    json['name'] as String,
    json['alt'] as String,
  );
}

Map<String, dynamic> _$WCProductCategoryImageToJson(
        WCProductCategoryImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date_created': instance.dateCreated,
      'date_created_gmt': instance.dateCreatedGmt,
      'date_modified': instance.dateModified,
      'date_modified_gmt': instance.dateModifiedGmt,
      'src': instance.src,
      'name': instance.name,
      'alt': instance.alt,
    };
