import 'package:json_annotation/json_annotation.dart';

part 'Taxes.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Taxes {
  final int id;
  final String total;
  final String subtotal;

  Taxes(this.id, this.total, this.subtotal);

  factory Taxes.fromJson(Map<String, dynamic> json) => _$TaxesFromJson(json);

  Map<String, dynamic> toJson() => _$TaxesToJson(this);
}
