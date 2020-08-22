import 'package:json_annotation/json_annotation.dart';
import 'package:woocommerce_sdk/models/Pricing/RawPrices.dart';

part 'Price.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Price {
  final String currencyCode;
  final String currencySymbol;
  final int currencyMinorUnit;
  final String currencyDecimalSeparator;
  final String currencyThousandSeparator;
  final String currencyPrefix;
  final String currencySuffix;
  final String price;
  final String regularPrice;
  final String salePrice;
  dynamic priceRange;
  RawPrices rawPrices;

  Price(
      this.currencyCode,
      this.currencySymbol,
      this.currencyMinorUnit,
      this.currencyDecimalSeparator,
      this.currencyThousandSeparator,
      this.currencyPrefix,
      this.currencySuffix,
      this.price,
      this.regularPrice,
      this.salePrice);

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);

  Map<String, dynamic> toJson() => _$PriceToJson(this);
}
