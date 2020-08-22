// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PriceTotal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PriceTotal _$PriceTotalFromJson(Map<String, dynamic> json) {
  return PriceTotal(
    json['currency_code'] as String,
    json['currency_symbol'] as String,
    json['currency_minor_unit'] as int,
    json['currency_decimal_separator'] as String,
    json['currency_thousand_separator'] as String,
    json['currency_prefix'] as String,
    json['currency_suffix'] as String,
    json['line_subtotal'] as String,
    json['line_subtotal_tax'] as String,
    json['line_total'] as String,
    json['line_total_tax'] as String,
  );
}

Map<String, dynamic> _$PriceTotalToJson(PriceTotal instance) =>
    <String, dynamic>{
      'currency_code': instance.currencyCode,
      'currency_symbol': instance.currencySymbol,
      'currency_minor_unit': instance.currencyMinorUnit,
      'currency_decimal_separator': instance.currencyDecimalSeparator,
      'currency_thousand_separator': instance.currencyThousandSeparator,
      'currency_prefix': instance.currencyPrefix,
      'currency_suffix': instance.currencySuffix,
      'line_subtotal': instance.lineSubtotal,
      'line_subtotal_tax': instance.lineSubtotalTax,
      'line_total': instance.lineTotal,
      'line_total_tax': instance.lineTotalTax,
    };
