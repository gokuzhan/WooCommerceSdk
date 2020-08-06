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
    json['dateCreated'] == null
        ? null
        : DateTime.parse(json['dateCreated'] as String),
    json['dateCreatedGmt'] == null
        ? null
        : DateTime.parse(json['dateCreatedGmt'] as String),
    json['dateModified'] == null
        ? null
        : DateTime.parse(json['dateModified'] as String),
    json['dateModifiedGmt'] == null
        ? null
        : DateTime.parse(json['dateModifiedGmt'] as String),
    json['discountType'] as String,
    json['description'] as String,
    json['dateExpires'] as String,
    json['dateExpiresGmt'] as String,
    json['usageCount'] as int,
    json['individualUse'] as bool,
    (json['productIds'] as List)?.map((e) => e as int)?.toList(),
    (json['excludedProductIds'] as List)?.map((e) => e as int)?.toList(),
    json['usageLimit'] as int,
    json['usageLimitPerUser'] as int,
    json['limitUsageToXItems'] as int,
    json['freeShipping'] as bool,
    (json['productCategories'] as List)?.map((e) => e as int)?.toList(),
    (json['excludedProductCategories'] as List)?.map((e) => e as int)?.toList(),
    json['excludeSaleItems'] as bool,
    json['minimumAmount'] as String,
    json['maximumAmount'] as String,
    (json['emailRestrictions'] as List)?.map((e) => e as String)?.toList(),
    (json['usedBy'] as List)?.map((e) => e as String)?.toList(),
    (json['metaData'] as List)?.map((e) => e as String)?.toList(),
    json['lLinks'] == null
        ? null
        : WCCouponLinks.fromJson(json['lLinks'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WCCouponToJson(WCCoupon instance) => <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'amount': instance.amount,
      'dateCreated': instance.dateCreated?.toIso8601String(),
      'dateCreatedGmt': instance.dateCreatedGmt?.toIso8601String(),
      'dateModified': instance.dateModified?.toIso8601String(),
      'dateModifiedGmt': instance.dateModifiedGmt?.toIso8601String(),
      'discountType': instance.discountType,
      'description': instance.description,
      'dateExpires': instance.dateExpires,
      'dateExpiresGmt': instance.dateExpiresGmt,
      'usageCount': instance.usageCount,
      'individualUse': instance.individualUse,
      'productIds': instance.productIds,
      'excludedProductIds': instance.excludedProductIds,
      'usageLimit': instance.usageLimit,
      'usageLimitPerUser': instance.usageLimitPerUser,
      'limitUsageToXItems': instance.limitUsageToXItems,
      'freeShipping': instance.freeShipping,
      'productCategories': instance.productCategories,
      'excludedProductCategories': instance.excludedProductCategories,
      'excludeSaleItems': instance.excludeSaleItems,
      'minimumAmount': instance.minimumAmount,
      'maximumAmount': instance.maximumAmount,
      'emailRestrictions': instance.emailRestrictions,
      'usedBy': instance.usedBy,
      'metaData': instance.metaData,
      'lLinks': instance.lLinks,
    };
