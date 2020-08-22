import 'package:json_annotation/json_annotation.dart';

part 'RawPrice.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class RawPrice {
  final int precision;
  final String price;
  final String regularPrice;
  final String salePrice;

  RawPrice(this.precision, this.price, this.regularPrice, this.salePrice);

  factory RawPrice.fromJson(Map<String, dynamic> json) =>
      _$RawPriceFromJson(json);

  Map<String, dynamic> toJson() => _$RawPriceToJson(this);
}
