// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCTaxRate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCTaxRate _$WCTaxRateFromJson(Map<String, dynamic> json) {
  return WCTaxRate(
    json['id'] as int,
    json['country'] as String,
    json['state'] as String,
    json['postcode'] as String,
    json['city'] as String,
    json['rate'] as String,
    json['name'] as String,
    json['priority'] as int,
    json['compound'] as bool,
    json['shipping'] as bool,
    json['order'] as int,
    json['taxClass'] as String,
    json['links'] == null
        ? null
        : WCTaxRateLinks.fromJson(json['links'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WCTaxRateToJson(WCTaxRate instance) => <String, dynamic>{
      'id': instance.id,
      'country': instance.country,
      'state': instance.state,
      'postcode': instance.postcode,
      'city': instance.city,
      'rate': instance.rate,
      'name': instance.name,
      'priority': instance.priority,
      'compound': instance.compound,
      'shipping': instance.shipping,
      'order': instance.order,
      'taxClass': instance.taxClass,
      'links': instance.links,
    };
