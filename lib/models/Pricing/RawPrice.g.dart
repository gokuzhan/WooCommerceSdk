// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'RawPrice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RawPrice _$RawPriceFromJson(Map<String, dynamic> json) {
  return RawPrice(
    json['precision'] as int,
    json['price'] as String,
    json['regular_price'] as String,
    json['sale_price'] as String,
  );
}

Map<String, dynamic> _$RawPriceToJson(RawPrice instance) => <String, dynamic>{
      'precision': instance.precision,
      'price': instance.price,
      'regular_price': instance.regularPrice,
      'sale_price': instance.salePrice,
    };
