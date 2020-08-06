// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCCustomer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCCustomer _$WCCustomerFromJson(Map<String, dynamic> json) {
  return WCCustomer(
    json['id'] as int,
    json['dateCreated'] as String,
    json['dateCreatedGmt'] as String,
    json['dateModified'] as String,
    json['dateModifiedGmt'] as String,
    json['email'] as String,
    json['firstName'] as String,
    json['lastName'] as String,
    json['role'] as String,
    json['username'] as String,
    json['password'] as String,
    json['billing'] == null
        ? null
        : Billing.fromJson(json['billing'] as Map<String, dynamic>),
    json['shipping'] == null
        ? null
        : Shipping.fromJson(json['shipping'] as Map<String, dynamic>),
    json['isPayingCustomer'] as bool,
    json['avatarUrl'] as String,
    (json['metaData'] as List)
        ?.map((e) => e == null
            ? null
            : WCCustomerMetaData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['links'] == null
        ? null
        : Links.fromJson(json['links'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WCCustomerToJson(WCCustomer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateCreated': instance.dateCreated,
      'dateCreatedGmt': instance.dateCreatedGmt,
      'dateModified': instance.dateModified,
      'dateModifiedGmt': instance.dateModifiedGmt,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'role': instance.role,
      'username': instance.username,
      'password': instance.password,
      'billing': instance.billing,
      'shipping': instance.shipping,
      'isPayingCustomer': instance.isPayingCustomer,
      'avatarUrl': instance.avatarUrl,
      'metaData': instance.metaData,
      'links': instance.links,
    };
