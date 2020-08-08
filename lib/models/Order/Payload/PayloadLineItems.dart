import 'package:json_annotation/json_annotation.dart';

part 'PayloadLineItems.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PayloadLineItems {
  final int productId;
  final String name;
  final int variationId;
  final String taxClass;
  final String subtotal;
  final String total;
  final int quantity;

  PayloadLineItems(this.productId, this.name, this.variationId, this.taxClass,
      this.subtotal, this.total, this.quantity);

  factory PayloadLineItems.fromJson(Map<String, dynamic> json) =>
      _$PayloadLineItemsFromJson(json);

  Map<String, dynamic> toJson() => _$PayloadLineItemsToJson(this);
}
