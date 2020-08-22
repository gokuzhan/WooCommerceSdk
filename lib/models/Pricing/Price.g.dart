// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Price _$PriceFromJson(Map<String, dynamic> json) {
  return Price(
    json['currency_code'] as String,
    json['currency_symbol'] as String,
    json['currency_minor_unit'] as int,
    json['currency_decimal_separator'] as String,
    json['currency_thousand_separator'] as String,
    json['currency_prefix'] as String,
    json['currency_suffix'] as String,
    json['price'] as String,
    json['regular_price'] as String,
    json['sale_price'] as String,
  )
    ..priceRange = json['price_range']
    ..rawPrices = json['raw_prices'] == null
        ? null
        : RawPrices.fromJson(json['raw_prices'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PriceToJson(Price instance) => <String, dynamic>{
      'currency_code': instance.currencyCode,
      'currency_symbol': instance.currencySymbol,
      'currency_minor_unit': instance.currencyMinorUnit,
      'currency_decimal_separator': instance.currencyDecimalSeparator,
      'currency_thousand_separator': instance.currencyThousandSeparator,
      'currency_prefix': instance.currencyPrefix,
      'currency_suffix': instance.currencySuffix,
      'price': instance.price,
      'regular_price': instance.regularPrice,
      'sale_price': instance.salePrice,
      'price_range': instance.priceRange,
      'raw_prices': instance.rawPrices,
    };
