// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCCoupon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCCoupon _$WCCouponFromJson(Map<String, dynamic> json) {
  return WCCoupon(
    json['id'] as int,
    json['code'] as String,
    json['amount'] as String,
    json['date_created'] == null
        ? null
        : DateTime.parse(json['date_created'] as String),
    json['date_created_gmt'] == null
        ? null
        : DateTime.parse(json['date_created_gmt'] as String),
    json['date_modified'] == null
        ? null
        : DateTime.parse(json['date_modified'] as String),
    json['date_modified_gmt'] == null
        ? null
        : DateTime.parse(json['date_modified_gmt'] as String),
    json['discount_type'] as String,
    json['description'] as String,
    json['date_expires'] as String,
    json['date_expires_gmt'] as String,
    json['usage_count'] as int,
    json['individual_use'] as bool,
    (json['product_ids'] as List)?.map((e) => e as int)?.toList(),
    (json['excluded_product_ids'] as List)?.map((e) => e as int)?.toList(),
    json['usage_limit'] as int,
    json['usage_limit_per_user'] as int,
    json['limit_usage_to_x_items'] as int,
    json['free_shipping'] as bool,
    (json['product_categories'] as List)?.map((e) => e as int)?.toList(),
    (json['excluded_product_categories'] as List)
        ?.map((e) => e as int)
        ?.toList(),
    json['exclude_sale_items'] as bool,
    json['minimum_amount'] as String,
    json['maximum_amount'] as String,
    (json['email_restrictions'] as List)?.map((e) => e as String)?.toList(),
    (json['used_by'] as List)?.map((e) => e as String)?.toList(),
    (json['meta_data'] as List)?.map((e) => e as String)?.toList(),
    json['l_links'] == null
        ? null
        : WCCouponLinks.fromJson(json['l_links'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WCCouponToJson(WCCoupon instance) => <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'amount': instance.amount,
      'date_created': instance.dateCreated?.toIso8601String(),
      'date_created_gmt': instance.dateCreatedGmt?.toIso8601String(),
      'date_modified': instance.dateModified?.toIso8601String(),
      'date_modified_gmt': instance.dateModifiedGmt?.toIso8601String(),
      'discount_type': instance.discountType,
      'description': instance.description,
      'date_expires': instance.dateExpires,
      'date_expires_gmt': instance.dateExpiresGmt,
      'usage_count': instance.usageCount,
      'individual_use': instance.individualUse,
      'product_ids': instance.productIds,
      'excluded_product_ids': instance.excludedProductIds,
      'usage_limit': instance.usageLimit,
      'usage_limit_per_user': instance.usageLimitPerUser,
      'limit_usage_to_x_items': instance.limitUsageToXItems,
      'free_shipping': instance.freeShipping,
      'product_categories': instance.productCategories,
      'excluded_product_categories': instance.excludedProductCategories,
      'exclude_sale_items': instance.excludeSaleItems,
      'minimum_amount': instance.minimumAmount,
      'maximum_amount': instance.maximumAmount,
      'email_restrictions': instance.emailRestrictions,
      'used_by': instance.usedBy,
      'meta_data': instance.metaData,
      'l_links': instance.lLinks,
    };
