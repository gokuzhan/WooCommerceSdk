// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCOrderPayloadBilling.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCOrderPayloadBilling _$WCOrderPayloadBillingFromJson(
    Map<String, dynamic> json) {
  return WCOrderPayloadBilling(
    json['first_name'] as String,
    json['last_name'] as String,
    json['address1'] as String,
    json['address2'] as String,
    json['city'] as String,
    json['state'] as String,
    json['postcode'] as String,
    json['country'] as String,
    json['email'] as String,
    json['phone'] as String,
  );
}

Map<String, dynamic> _$WCOrderPayloadBillingToJson(
        WCOrderPayloadBilling instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'address1': instance.address1,
      'address2': instance.address2,
      'city': instance.city,
      'state': instance.state,
      'postcode': instance.postcode,
      'country': instance.country,
      'email': instance.email,
      'phone': instance.phone,
    };
