// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Billing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Billing _$BillingFromJson(Map<String, dynamic> json) {
  return Billing(
    json['firstName'] as String,
    json['lastName'] as String,
    json['company'] as String,
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

Map<String, dynamic> _$BillingToJson(Billing instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'company': instance.company,
      'address1': instance.address1,
      'address2': instance.address2,
      'city': instance.city,
      'state': instance.state,
      'postcode': instance.postcode,
      'country': instance.country,
      'email': instance.email,
      'phone': instance.phone,
    };
