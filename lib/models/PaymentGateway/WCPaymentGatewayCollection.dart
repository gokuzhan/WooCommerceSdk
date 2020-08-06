import 'package:json_annotation/json_annotation.dart';

part 'WCPaymentGatewayCollection.g.dart';

@JsonSerializable()
class WCPaymentGatewayCollection {
  final String href;

  WCPaymentGatewayCollection(this.href);

  factory WCPaymentGatewayCollection.fromJson(Map<String, dynamic> json) =>
      _$WCPaymentGatewayCollectionFromJson(json);

  Map<String, dynamic> toJson() => _$WCPaymentGatewayCollectionToJson(this);
}
