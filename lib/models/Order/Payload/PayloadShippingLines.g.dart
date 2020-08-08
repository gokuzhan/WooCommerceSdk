// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PayloadShippingLines.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PayloadShippingLines _$PayloadShippingLinesFromJson(Map<String, dynamic> json) {
  return PayloadShippingLines(
    json['method_id'] as String,
    json['method_title'] as String,
    json['total'] as String,
  );
}

Map<String, dynamic> _$PayloadShippingLinesToJson(
        PayloadShippingLines instance) =>
    <String, dynamic>{
      'method_id': instance.methodId,
      'method_title': instance.methodTitle,
      'total': instance.total,
    };
