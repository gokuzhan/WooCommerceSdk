import 'package:json_annotation/json_annotation.dart';
import 'package:woocommerce_sdk/models/Pricing/RawPrice.dart';

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
  final RawPrice rawPrices;

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
      this.salePrice,
      this.rawPrices);

  get getPrice => int.parse(this.price).toStringAsPrecision(currencyMinorUnit);

  get getRegularPrice =>
      int.parse(this.regularPrice).toStringAsPrecision(currencyMinorUnit);

  get getSalePrice =>
      int.parse(this.salePrice).toStringAsPrecision(currencyMinorUnit);

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);

  Map<String, dynamic> toJson() => _$PriceToJson(this);
}
