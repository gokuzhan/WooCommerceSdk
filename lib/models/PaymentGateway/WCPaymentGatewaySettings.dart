import 'package:json_annotation/json_annotation.dart';

import 'WCPaymentGatewayInstructions.dart';
import 'WCPaymentGatewayTitle.dart';

part 'WCPaymentGatewaySettings.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCPaymentGatewaySettings {
  final WCPaymentGatewayTitle title;
  final WCPaymentGatewayInstructions instructions;

  WCPaymentGatewaySettings(this.title, this.instructions);

  factory WCPaymentGatewaySettings.fromJson(Map<String, dynamic> json) =>
      _$WCPaymentGatewaySettingsFromJson(json);

  Map<String, dynamic> toJson() => _$WCPaymentGatewaySettingsToJson(this);
}
