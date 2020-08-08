import 'package:json_annotation/json_annotation.dart';

import 'WCPaymentGatewayLinks.dart';
import 'WCPaymentGatewaySettings.dart';

part 'WCPaymentGateway.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCPaymentGateway {
  final String id;
  final String title;
  final String description;
  final int order;
  final bool enabled;
  final String methodTitle;
  final String methodDescription;
  final List<String> methodSupports;
  final WCPaymentGatewaySettings settings;
  final WCPaymentGatewayLinks lLinks;

  WCPaymentGateway(
      this.id,
      this.title,
      this.description,
      this.order,
      this.enabled,
      this.methodTitle,
      this.methodDescription,
      this.methodSupports,
      this.settings,
      this.lLinks);

  factory WCPaymentGateway.fromJson(Map<String, dynamic> json) =>
      _$WCPaymentGatewayFromJson(json);

  Map<String, dynamic> toJson() => _$WCPaymentGatewayToJson(this);
}
