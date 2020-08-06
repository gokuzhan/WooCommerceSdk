import 'package:json_annotation/json_annotation.dart';
import 'package:woocommerce_sdk/models/MetaData.dart';

part 'WCOrderCouponLine.g.dart';

@JsonSerializable()
class WCOrderCouponLine {
  final int id;
  final String code;
  final String discount;
  final String discountTax;
  final List<MetaData> metaData;

  WCOrderCouponLine(
      this.id, this.code, this.discount, this.discountTax, this.metaData);

  factory WCOrderCouponLine.fromJson(Map<String, dynamic> json) =>
      _$WCOrderCouponLineFromJson(json);

  Map<String, dynamic> toJson() => _$WCOrderCouponLineToJson(this);
}
