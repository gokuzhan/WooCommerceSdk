// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCPaymentGatewayInstructions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCPaymentGatewayInstructions _$WCPaymentGatewayInstructionsFromJson(
    Map<String, dynamic> json) {
  return WCPaymentGatewayInstructions(
    json['id'] as String,
    json['label'] as String,
    json['description'] as String,
    json['type'] as String,
    json['value'] as String,
    json['defaultvalue'] as String,
    json['tip'] as String,
    json['placeholder'] as String,
  );
}

Map<String, dynamic> _$WCPaymentGatewayInstructionsToJson(
        WCPaymentGatewayInstructions instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'description': instance.description,
      'type': instance.type,
      'value': instance.value,
      'defaultvalue': instance.defaultvalue,
      'tip': instance.tip,
      'placeholder': instance.placeholder,
    };
