import 'package:json_annotation/json_annotation.dart';

import 'WCCouponLinks.dart';

part 'WCCoupon.g.dart';

@JsonSerializable()
class WCCoupon {
  final int id;
  final String code;
  final String amount;
  final DateTime dateCreated;
  final DateTime dateCreatedGmt;
  final DateTime dateModified;
  final DateTime dateModifiedGmt;
  final String discountType;
  final String description;
  final String dateExpires;
  final String dateExpiresGmt;
  final int usageCount;
  final bool individualUse;
  final List<int> productIds;
  final List<int> excludedProductIds;
  final int usageLimit;
  final int usageLimitPerUser;
  final int limitUsageToXItems;
  final bool freeShipping;
  final List<int> productCategories;
  final List<int> excludedProductCategories;
  final bool excludeSaleItems;
  final String minimumAmount;
  final String maximumAmount;
  final List<String> emailRestrictions;
  final List<String> usedBy;
  final List<String> metaData;
  final WCCouponLinks lLinks;

  WCCoupon(
      this.id,
      this.code,
      this.amount,
      this.dateCreated,
      this.dateCreatedGmt,
      this.dateModified,
      this.dateModifiedGmt,
      this.discountType,
      this.description,
      this.dateExpires,
      this.dateExpiresGmt,
      this.usageCount,
      this.individualUse,
      this.productIds,
      this.excludedProductIds,
      this.usageLimit,
      this.usageLimitPerUser,
      this.limitUsageToXItems,
      this.freeShipping,
      this.productCategories,
      this.excludedProductCategories,
      this.excludeSaleItems,
      this.minimumAmount,
      this.maximumAmount,
      this.emailRestrictions,
      this.usedBy,
      this.metaData,
      this.lLinks);

  factory WCCoupon.fromJson(Map<String, dynamic> json) =>
      _$WCCouponFromJson(json);

  Map<String, dynamic> toJson() => _$WCCouponToJson(this);
}
