// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCCartItemImages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCCartItemImages _$WCCartItemImagesFromJson(Map<String, dynamic> json) {
  return WCCartItemImages(
    json['id'] as String,
    json['src'] as String,
    json['thumbnail'] as String,
    json['srcset'] as bool,
    json['sizes'] as String,
    json['name'] as String,
    json['alt'] as String,
  );
}

Map<String, dynamic> _$WCCartItemImagesToJson(WCCartItemImages instance) =>
    <String, dynamic>{
      'id': instance.id,
      'src': instance.src,
      'thumbnail': instance.thumbnail,
      'srcset': instance.srcset,
      'sizes': instance.sizes,
      'name': instance.name,
      'alt': instance.alt,
    };
