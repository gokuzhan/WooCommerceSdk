import 'package:json_annotation/json_annotation.dart';
import 'package:woocommerce_sdk/models/MetaData.dart';

part 'FeeLineTax.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class FeeLineTax {
  final int id;
  final String rateCode;
  final int rateId;
  final String label;
  final bool compound;
  final String taxTotal;
  final String shippingTaxTotal;
  final List<MetaData> metaData;

  FeeLineTax(this.id, this.rateCode, this.rateId, this.label, this.compound,
      this.taxTotal, this.shippingTaxTotal, this.metaData);

  factory FeeLineTax.fromJson(Map<String, dynamic> json) =>
      _$FeeLineTaxFromJson(json);

  Map<String, dynamic> toJson() => _$FeeLineTaxToJson(this);
}
