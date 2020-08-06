import 'package:json_annotation/json_annotation.dart';

import 'WCPaymentGatewayCollection.dart';
import 'WCPaymentGatewaySelf.dart';

part 'WCPaymentGatewayLinks.g.dart';

@JsonSerializable()
class WCPaymentGatewayLinks {
  final List<WCPaymentGatewaySelf> self;
  final List<WCPaymentGatewayCollection> collection;

  WCPaymentGatewayLinks(this.self, this.collection);

  factory WCPaymentGatewayLinks.fromJson(Map<String, dynamic> json) =>
      _$WCPaymentGatewayLinksFromJson(json);

  Map<String, dynamic> toJson() => _$WCPaymentGatewayLinksToJson(this);
}
