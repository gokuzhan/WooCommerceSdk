// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCProductVariationAttribute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCProductVariationAttribute _$WCProductVariationAttributeFromJson(
    Map<String, dynamic> json) {
  return WCProductVariationAttribute(
    json['id'] as int,
    json['name'] as String,
    json['option'] as String,
  );
}

Map<String, dynamic> _$WCProductVariationAttributeToJson(
        WCProductVariationAttribute instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'option': instance.option,
    };
