// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCPaymentGatewaySettings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCPaymentGatewaySettings _$WCPaymentGatewaySettingsFromJson(
    Map<String, dynamic> json) {
  return WCPaymentGatewaySettings(
    json['title'] == null
        ? null
        : WCPaymentGatewayTitle.fromJson(json['title'] as Map<String, dynamic>),
    json['instructions'] == null
        ? null
        : WCPaymentGatewayInstructions.fromJson(
            json['instructions'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WCPaymentGatewaySettingsToJson(
        WCPaymentGatewaySettings instance) =>
    <String, dynamic>{
      'title': instance.title,
      'instructions': instance.instructions,
    };
