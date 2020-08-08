// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Shipping.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Shipping _$ShippingFromJson(Map<String, dynamic> json) {
  return Shipping(
    json['first_name'] as String,
    json['last_name'] as String,
    json['company'] as String,
    json['address1'] as String,
    json['address2'] as String,
    json['city'] as String,
    json['state'] as String,
    json['postcode'] as String,
    json['country'] as String,
  );
}

Map<String, dynamic> _$ShippingToJson(Shipping instance) => <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'company': instance.company,
      'address1': instance.address1,
      'address2': instance.address2,
      'city': instance.city,
      'state': instance.state,
      'postcode': instance.postcode,
      'country': instance.country,
    };
