import 'package:json_annotation/json_annotation.dart';

part 'PriceTotal.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PriceTotal {
  final String currencyCode;
  final String currencySymbol;
  final int currencyMinorUnit;
  final String currencyDecimalSeparator;
  final String currencyThousandSeparator;
  final String currencyPrefix;
  final String currencySuffix;
  final String lineSubtotal;
  final String lineSubtotalTax;
  final String lineTotal;
  final String lineTotalTax;

  PriceTotal(
      this.currencyCode,
      this.currencySymbol,
      this.currencyMinorUnit,
      this.currencyDecimalSeparator,
      this.currencyThousandSeparator,
      this.currencyPrefix,
      this.currencySuffix,
      this.lineSubtotal,
      this.lineSubtotalTax,
      this.lineTotal,
      this.lineTotalTax);

  get getSubtotal =>
      int.parse(this.lineSubtotal).toStringAsPrecision(currencyMinorUnit);

  get getTotal =>
      int.parse(this.lineTotal).toStringAsPrecision(currencyMinorUnit);

  factory PriceTotal.fromJson(Map<String, dynamic> json) =>
      _$PriceTotalFromJson(json);

  Map<String, dynamic> toJson() => _$PriceTotalToJson(this);
}
