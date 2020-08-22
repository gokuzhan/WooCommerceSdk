import 'package:json_annotation/json_annotation.dart';
import 'package:woocommerce_sdk/helpers/Number.dart';
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
  final dynamic priceRange;
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
    this.priceRange,
    this.rawPrices,
  );

  get getPrice => Number.price(price, currencyMinorUnit);

  get getRegularPrice => Number.price(regularPrice, currencyMinorUnit);

  get getSalePrice => Number.price(salePrice, currencyMinorUnit);

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);

  Map<String, dynamic> toJson() => _$PriceToJson(this);
}
