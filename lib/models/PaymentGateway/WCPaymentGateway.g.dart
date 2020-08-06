// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCPaymentGateway.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCPaymentGateway _$WCPaymentGatewayFromJson(Map<String, dynamic> json) {
  return WCPaymentGateway(
    json['id'] as String,
    json['title'] as String,
    json['description'] as String,
    json['order'] as int,
    json['enabled'] as bool,
    json['methodTitle'] as String,
    json['methodDescription'] as String,
    (json['methodSupports'] as List)?.map((e) => e as String)?.toList(),
    json['settings'] == null
        ? null
        : WCPaymentGatewaySettings.fromJson(
            json['settings'] as Map<String, dynamic>),
    json['lLinks'] == null
        ? null
        : WCPaymentGatewayLinks.fromJson(
            json['lLinks'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WCPaymentGatewayToJson(WCPaymentGateway instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'order': instance.order,
      'enabled': instance.enabled,
      'methodTitle': instance.methodTitle,
      'methodDescription': instance.methodDescription,
      'methodSupports': instance.methodSupports,
      'settings': instance.settings,
      'lLinks': instance.lLinks,
    };
