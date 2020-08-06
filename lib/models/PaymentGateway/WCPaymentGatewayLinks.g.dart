// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCPaymentGatewayLinks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCPaymentGatewayLinks _$WCPaymentGatewayLinksFromJson(
    Map<String, dynamic> json) {
  return WCPaymentGatewayLinks(
    (json['self'] as List)
        ?.map((e) => e == null
            ? null
            : WCPaymentGatewaySelf.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['collection'] as List)
        ?.map((e) => e == null
            ? null
            : WCPaymentGatewayCollection.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$WCPaymentGatewayLinksToJson(
        WCPaymentGatewayLinks instance) =>
    <String, dynamic>{
      'self': instance.self,
      'collection': instance.collection,
    };
