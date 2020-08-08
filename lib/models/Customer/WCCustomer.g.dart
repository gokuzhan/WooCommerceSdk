// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCCustomer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCCustomer _$WCCustomerFromJson(Map<String, dynamic> json) {
  return WCCustomer(
    json['id'] as int,
    json['date_created'] as String,
    json['date_created_gmt'] as String,
    json['date_modified'] as String,
    json['date_modified_gmt'] as String,
    json['email'] as String,
    json['first_name'] as String,
    json['last_name'] as String,
    json['role'] as String,
    json['username'] as String,
    json['password'] as String,
    json['billing'] == null
        ? null
        : Billing.fromJson(json['billing'] as Map<String, dynamic>),
    json['shipping'] == null
        ? null
        : Shipping.fromJson(json['shipping'] as Map<String, dynamic>),
    json['is_paying_customer'] as bool,
    json['avatar_url'] as String,
    (json['meta_data'] as List)
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
      'date_created': instance.dateCreated,
      'date_created_gmt': instance.dateCreatedGmt,
      'date_modified': instance.dateModified,
      'date_modified_gmt': instance.dateModifiedGmt,
      'email': instance.email,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'role': instance.role,
      'username': instance.username,
      'password': instance.password,
      'billing': instance.billing,
      'shipping': instance.shipping,
      'is_paying_customer': instance.isPayingCustomer,
      'avatar_url': instance.avatarUrl,
      'meta_data': instance.metaData,
      'links': instance.links,
    };
