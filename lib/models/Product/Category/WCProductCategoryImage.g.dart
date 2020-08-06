// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCProductCategoryImage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCProductCategoryImage _$WCProductCategoryImageFromJson(
    Map<String, dynamic> json) {
  return WCProductCategoryImage(
    json['id'] as int,
    json['dateCreated'] as String,
    json['dateCreatedGmt'] as String,
    json['dateModified'] as String,
    json['dateModifiedGmt'] as String,
    json['src'] as String,
    json['name'] as String,
    json['alt'] as String,
  );
}

Map<String, dynamic> _$WCProductCategoryImageToJson(
        WCProductCategoryImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateCreated': instance.dateCreated,
      'dateCreatedGmt': instance.dateCreatedGmt,
      'dateModified': instance.dateModified,
      'dateModifiedGmt': instance.dateModifiedGmt,
      'src': instance.src,
      'name': instance.name,
      'alt': instance.alt,
    };
