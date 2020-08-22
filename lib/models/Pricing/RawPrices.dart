import 'package:json_annotation/json_annotation.dart';

part 'RawPrices.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class RawPrices {
  final int precision;
  final String price;
  final String regularPrice;
  final String salePrice;

  RawPrices(this.precision, this.price, this.regularPrice, this.salePrice);

  factory RawPrices.fromJson(Map<String, dynamic> json) =>
      _$RawPricesFromJson(json);

  Map<String, dynamic> toJson() => _$RawPricesToJson(this);
}
