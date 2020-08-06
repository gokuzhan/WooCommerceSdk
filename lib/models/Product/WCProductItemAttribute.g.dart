// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCProductItemAttribute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCProductItemAttribute _$WCProductItemAttributeFromJson(
    Map<String, dynamic> json) {
  return WCProductItemAttribute(
    json['id'] as int,
    json['name'] as String,
    json['position'] as int,
    json['visible'] as bool,
    json['variation'] as bool,
    (json['options'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$WCProductItemAttributeToJson(
        WCProductItemAttribute instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'position': instance.position,
      'visible': instance.visible,
      'variation': instance.variation,
      'options': instance.options,
    };
