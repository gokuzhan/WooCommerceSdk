import 'package:json_annotation/json_annotation.dart';

part 'WCPaymentGatewayInstructions.g.dart';

@JsonSerializable()
class WCPaymentGatewayInstructions {
  final String id;
  final String label;
  final String description;
  final String type;
  final String value;
  final String defaultvalue;
  final String tip;
  final String placeholder;

  WCPaymentGatewayInstructions(this.id, this.label, this.description, this.type,
      this.value, this.defaultvalue, this.tip, this.placeholder);

  factory WCPaymentGatewayInstructions.fromJson(Map<String, dynamic> json) =>
      _$WCPaymentGatewayInstructionsFromJson(json);

  Map<String, dynamic> toJson() => _$WCPaymentGatewayInstructionsToJson(this);
}
