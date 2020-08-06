// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCProductVariation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCProductVariation _$WCProductVariationFromJson(Map<String, dynamic> json) {
  return WCProductVariation(
    json['id'] as int,
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
    json['description'] as String,
    json['permalink'] as String,
    json['sku'] as String,
    json['price'] as String,
    json['regularPrice'] as String,
    json['salePrice'] as String,
    json['dateOnSaleFrom'] == null
        ? null
        : DateTime.parse(json['dateOnSaleFrom'] as String),
    json['dateOnSaleFromGmt'] == null
        ? null
        : DateTime.parse(json['dateOnSaleFromGmt'] as String),
    json['dateOnSaleTo'] == null
        ? null
        : DateTime.parse(json['dateOnSaleTo'] as String),
    json['dateOnSaleToGmt'] == null
        ? null
        : DateTime.parse(json['dateOnSaleToGmt'] as String),
    json['onSale'] as bool,
    json['status'] as String,
    json['purchasable'] as bool,
    json['virtual'] as bool,
    json['downloadable'] as bool,
    (json['downloads'] as List)
        ?.map((e) => e == null
            ? null
            : WCProductVariationDownload.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['downloadLimit'] as int,
    json['downloadExpiry'] as int,
    json['taxStatus'] as String,
    json['taxClass'] as String,
    json['manageStock'] as bool,
    json['stockQuantity'] as int,
    json['stockStatus'] as String,
    json['backorders'] as String,
    json['backordersAllowed'] as bool,
    json['backordered'] as bool,
    (json['attributes'] as List)
        ?.map((e) => e == null
            ? null
            : WCProductVariationAttribute.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['weight'] as String,
    json['shippingClass'] as String,
    json['shippingClassId'] as int,
    json['menuOrder'] as int,
    json['dimensions'] == null
        ? null
        : WCProductVariationDimension.fromJson(
            json['dimensions'] as Map<String, dynamic>),
    (json['metaData'] as List)
        ?.map((e) => e == null
            ? null
            : WCProductVariationMetaData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['image'] == null
        ? null
        : WCProductVariationImage.fromJson(
            json['image'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WCProductVariationToJson(WCProductVariation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateCreated': instance.dateCreated?.toIso8601String(),
      'dateCreatedGmt': instance.dateCreatedGmt?.toIso8601String(),
      'dateModified': instance.dateModified?.toIso8601String(),
      'dateModifiedGmt': instance.dateModifiedGmt?.toIso8601String(),
      'description': instance.description,
      'permalink': instance.permalink,
      'sku': instance.sku,
      'price': instance.price,
      'regularPrice': instance.regularPrice,
      'salePrice': instance.salePrice,
      'dateOnSaleFrom': instance.dateOnSaleFrom?.toIso8601String(),
      'dateOnSaleFromGmt': instance.dateOnSaleFromGmt?.toIso8601String(),
      'dateOnSaleTo': instance.dateOnSaleTo?.toIso8601String(),
      'dateOnSaleToGmt': instance.dateOnSaleToGmt?.toIso8601String(),
      'onSale': instance.onSale,
      'status': instance.status,
      'purchasable': instance.purchasable,
      'virtual': instance.virtual,
      'downloadable': instance.downloadable,
      'downloads': instance.downloads,
      'downloadLimit': instance.downloadLimit,
      'downloadExpiry': instance.downloadExpiry,
      'taxStatus': instance.taxStatus,
      'taxClass': instance.taxClass,
      'manageStock': instance.manageStock,
      'stockQuantity': instance.stockQuantity,
      'stockStatus': instance.stockStatus,
      'backorders': instance.backorders,
      'backordersAllowed': instance.backordersAllowed,
      'backordered': instance.backordered,
      'attributes': instance.attributes,
      'weight': instance.weight,
      'shippingClass': instance.shippingClass,
      'shippingClassId': instance.shippingClassId,
      'menuOrder': instance.menuOrder,
      'dimensions': instance.dimensions,
      'metaData': instance.metaData,
      'image': instance.image,
    };
