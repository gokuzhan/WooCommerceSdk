// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCOrderPayloadCouponLines.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCOrderPayloadCouponLines _$WCOrderPayloadCouponLinesFromJson(
    Map<String, dynamic> json) {
  return WCOrderPayloadCouponLines()
    ..code = json['code'] as String
    ..metaData = (json['meta_data'] as List)
        ?.map((e) => e == null
            ? null
            : WCOrderPayloadMetaData.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$WCOrderPayloadCouponLinesToJson(
        WCOrderPayloadCouponLines instance) =>
    <String, dynamic>{
      'code': instance.code,
      'meta_data': instance.metaData,
    };
