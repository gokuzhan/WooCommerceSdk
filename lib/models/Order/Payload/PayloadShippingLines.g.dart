// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PayloadShippingLines.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PayloadShippingLines _$PayloadShippingLinesFromJson(Map<String, dynamic> json) {
  return PayloadShippingLines(
    json['methodId'] as String,
    json['methodTitle'] as String,
    json['total'] as String,
  );
}

Map<String, dynamic> _$PayloadShippingLinesToJson(
        PayloadShippingLines instance) =>
    <String, dynamic>{
      'methodId': instance.methodId,
      'methodTitle': instance.methodTitle,
      'total': instance.total,
    };
