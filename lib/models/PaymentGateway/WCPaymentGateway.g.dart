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
    json['method_title'] as String,
    json['method_description'] as String,
    (json['method_supports'] as List)?.map((e) => e as String)?.toList(),
    json['settings'] == null
        ? null
        : WCPaymentGatewaySettings.fromJson(
            json['settings'] as Map<String, dynamic>),
    json['l_links'] == null
        ? null
        : WCPaymentGatewayLinks.fromJson(
            json['l_links'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WCPaymentGatewayToJson(WCPaymentGateway instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'order': instance.order,
      'enabled': instance.enabled,
      'method_title': instance.methodTitle,
      'method_description': instance.methodDescription,
      'method_supports': instance.methodSupports,
      'settings': instance.settings,
      'l_links': instance.lLinks,
    };
