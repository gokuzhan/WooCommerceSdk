// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCShippingMethod.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCShippingMethod _$WCShippingMethodFromJson(Map<String, dynamic> json) {
  return WCShippingMethod(
    json['parentId'] as int,
    json['name'] as String,
    (json['locations'] as List)
        ?.map((e) => e == null
            ? null
            : WCShippingMethodLocations.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['methods'] == null
        ? null
        : WCShippingMethodMethods.fromJson(
            json['methods'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WCShippingMethodToJson(WCShippingMethod instance) =>
    <String, dynamic>{
      'parentId': instance.parentId,
      'name': instance.name,
      'locations': instance.locations,
      'methods': instance.methods,
    };
