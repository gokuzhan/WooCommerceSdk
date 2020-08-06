import 'package:json_annotation/json_annotation.dart';

part 'WCPaymentGatewayTitle.g.dart';

@JsonSerializable()
class WCPaymentGatewayTitle {
  final String id;
  final String label;
  final String description;
  final String type;
  final String value;
  final String defaultvalue;
  final String tip;
  final String placeholder;

  WCPaymentGatewayTitle(this.id, this.label, this.description, this.type,
      this.value, this.defaultvalue, this.tip, this.placeholder);

  factory WCPaymentGatewayTitle.fromJson(Map<String, dynamic> json) =>
      _$WCPaymentGatewayTitleFromJson(json);

  Map<String, dynamic> toJson() => _$WCPaymentGatewayTitleToJson(this);
}
