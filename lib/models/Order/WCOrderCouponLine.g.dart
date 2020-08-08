// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCOrderCouponLine.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCOrderCouponLine _$WCOrderCouponLineFromJson(Map<String, dynamic> json) {
  return WCOrderCouponLine(
    json['id'] as int,
    json['code'] as String,
    json['discount'] as String,
    json['discount_tax'] as String,
    (json['meta_data'] as List)
        ?.map((e) =>
            e == null ? null : MetaData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$WCOrderCouponLineToJson(WCOrderCouponLine instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'discount': instance.discount,
      'discount_tax': instance.discountTax,
      'meta_data': instance.metaData,
    };
