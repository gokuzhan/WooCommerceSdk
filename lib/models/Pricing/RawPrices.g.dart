// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'RawPrices.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RawPrices _$RawPricesFromJson(Map<String, dynamic> json) {
  return RawPrices(
    json['precision'] as int,
    json['price'] as String,
    json['regular_price'] as String,
    json['sale_price'] as String,
  );
}

Map<String, dynamic> _$RawPricesToJson(RawPrices instance) => <String, dynamic>{
      'precision': instance.precision,
      'price': instance.price,
      'regular_price': instance.regularPrice,
      'sale_price': instance.salePrice,
    };
