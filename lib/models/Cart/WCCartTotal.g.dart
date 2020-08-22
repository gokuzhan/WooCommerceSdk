// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCCartTotal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCCartTotal _$WCCartTotalFromJson(Map<String, dynamic> json) {
  return WCCartTotal(
    json['currency_code'] as String,
    json['currency_symbol'] as String,
    json['currency_minor_unit'] as int,
    json['currency_decimal_separator'] as String,
    json['currency_thousand_separator'] as String,
    json['currency_prefix'] as String,
    json['currency_suffix'] as String,
    json['total_items'] as String,
    json['total_items_tax'] as String,
    json['total_fees'] as String,
    json['total_fees_tax'] as String,
    json['total_discount'] as String,
    json['total_discount_tax'] as String,
    json['total_shipping'] as String,
    json['total_shipping_tax'] as String,
    json['total_price'] as String,
    json['total_tax'] as String,
    (json['tax_lines'] as List)
        ?.map((e) =>
            e == null ? null : TaxLines.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$WCCartTotalToJson(WCCartTotal instance) =>
    <String, dynamic>{
      'currency_code': instance.currencyCode,
      'currency_symbol': instance.currencySymbol,
      'currency_minor_unit': instance.currencyMinorUnit,
      'currency_decimal_separator': instance.currencyDecimalSeparator,
      'currency_thousand_separator': instance.currencyThousandSeparator,
      'currency_prefix': instance.currencyPrefix,
      'currency_suffix': instance.currencySuffix,
      'total_items': instance.totalItems,
      'total_items_tax': instance.totalItemsTax,
      'total_fees': instance.totalFees,
      'total_fees_tax': instance.totalFeesTax,
      'total_discount': instance.totalDiscount,
      'total_discount_tax': instance.totalDiscountTax,
      'total_shipping': instance.totalShipping,
      'total_shipping_tax': instance.totalShippingTax,
      'total_price': instance.totalPrice,
      'total_tax': instance.totalTax,
      'tax_lines': instance.taxLines,
    };
