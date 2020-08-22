import 'package:json_annotation/json_annotation.dart';
import 'package:woocommerce_sdk/helpers/Number.dart';
import 'package:woocommerce_sdk/models/Order/TaxLines.dart';

part 'WCCartTotal.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCCartTotal {
  final String currencyCode;
  final String currencySymbol;
  final int currencyMinorUnit;
  final String currencyDecimalSeparator;
  final String currencyThousandSeparator;
  final String currencyPrefix;
  final String currencySuffix;
  final String totalItems;
  final String totalItemsTax;
  final String totalFees;
  final String totalFeesTax;
  final String totalDiscount;
  final String totalDiscountTax;
  final String totalShipping;
  final String totalShippingTax;
  final String totalPrice;
  final String totalTax;
  final List<TaxLines> taxLines;

  WCCartTotal(
      this.currencyCode,
      this.currencySymbol,
      this.currencyMinorUnit,
      this.currencyDecimalSeparator,
      this.currencyThousandSeparator,
      this.currencyPrefix,
      this.currencySuffix,
      this.totalItems,
      this.totalItemsTax,
      this.totalFees,
      this.totalFeesTax,
      this.totalDiscount,
      this.totalDiscountTax,
      this.totalShipping,
      this.totalShippingTax,
      this.totalPrice,
      this.totalTax,
      this.taxLines);

  get getSubtotal => Number.price(totalPrice, currencyMinorUnit);

  get getTotal => Number.price(totalPrice, currencyMinorUnit);

  factory WCCartTotal.fromJson(Map<String, dynamic> json) =>
      _$WCCartTotalFromJson(json);

  Map<String, dynamic> toJson() => _$WCCartTotalToJson(this);
}
