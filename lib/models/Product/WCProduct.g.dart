// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCProduct.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCProduct _$WCProductFromJson(Map<String, dynamic> json) {
  return WCProduct(
    json['id'] as int,
    json['name'] as String,
    json['slug'] as String,
    json['permalink'] as String,
    json['type'] as String,
    json['status'] as String,
    json['featured'] as bool,
    json['catalogVisibility'] as String,
    json['description'] as String,
    json['shortDescription'] as String,
    json['sku'] as String,
    json['price'] as String,
    json['regularPrice'] as String,
    json['salePrice'] as String,
    json['priceHtml'] as String,
    json['onSale'] as bool,
    json['purchasable'] as bool,
    json['totalSales'] as int,
    json['virtual'] as bool,
    json['downloadable'] as bool,
    (json['downloads'] as List)
        ?.map((e) => e == null
            ? null
            : WCProductDownload.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['downloadLimit'] as int,
    json['downloadExpiry'] as int,
    json['externalUrl'] as String,
    json['buttonText'] as String,
    json['taxStatus'] as String,
    json['taxClass'] as String,
    json['manageStock'] as bool,
    json['stockQuantity'] as int,
    json['stockStatus'] as String,
    json['backorders'] as String,
    json['backordersAllowed'] as bool,
    json['backordered'] as bool,
    json['soldIndividually'] as bool,
    json['weight'] as String,
    json['dimensions'] == null
        ? null
        : WCProductDimension.fromJson(
            json['dimensions'] as Map<String, dynamic>),
    json['shippingRequired'] as bool,
    json['shippingTaxable'] as bool,
    json['shippingClass'] as String,
    json['shippingClassId'] as int,
    json['reviewsAllowed'] as bool,
    json['averageRating'] as String,
    json['ratingCount'] as int,
    (json['relatedIds'] as List)?.map((e) => e as int)?.toList(),
    (json['upsellIds'] as List)?.map((e) => e as int)?.toList(),
    (json['crossSellIds'] as List)?.map((e) => e as int)?.toList(),
    json['parentId'] as int,
    json['purchaseNote'] as String,
    (json['categories'] as List)
        ?.map((e) => e == null
            ? null
            : WCProductCategory.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['tags'] as List)
        ?.map((e) => e == null
            ? null
            : WCProductItemTag.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['images'] as List)
        ?.map((e) => e == null
            ? null
            : WCProductImage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['attributes'] as List)
        ?.map((e) => e == null
            ? null
            : WCProductItemAttribute.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['defaultAttributes'] as List)
        ?.map((e) => e == null
            ? null
            : WCProductDefaultAttribute.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['variations'] as List)?.map((e) => e as int)?.toList(),
    (json['groupedProducts'] as List)?.map((e) => e as int)?.toList(),
    json['menuOrder'] as int,
    (json['metaData'] as List)
        ?.map((e) => e == null
            ? null
            : WCProductMetaData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$WCProductToJson(WCProduct instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'permalink': instance.permalink,
      'type': instance.type,
      'status': instance.status,
      'featured': instance.featured,
      'catalogVisibility': instance.catalogVisibility,
      'description': instance.description,
      'shortDescription': instance.shortDescription,
      'sku': instance.sku,
      'price': instance.price,
      'regularPrice': instance.regularPrice,
      'salePrice': instance.salePrice,
      'priceHtml': instance.priceHtml,
      'onSale': instance.onSale,
      'purchasable': instance.purchasable,
      'totalSales': instance.totalSales,
      'virtual': instance.virtual,
      'downloadable': instance.downloadable,
      'downloads': instance.downloads,
      'downloadLimit': instance.downloadLimit,
      'downloadExpiry': instance.downloadExpiry,
      'externalUrl': instance.externalUrl,
      'buttonText': instance.buttonText,
      'taxStatus': instance.taxStatus,
      'taxClass': instance.taxClass,
      'manageStock': instance.manageStock,
      'stockQuantity': instance.stockQuantity,
      'stockStatus': instance.stockStatus,
      'backorders': instance.backorders,
      'backordersAllowed': instance.backordersAllowed,
      'backordered': instance.backordered,
      'soldIndividually': instance.soldIndividually,
      'weight': instance.weight,
      'dimensions': instance.dimensions,
      'shippingRequired': instance.shippingRequired,
      'shippingTaxable': instance.shippingTaxable,
      'shippingClass': instance.shippingClass,
      'shippingClassId': instance.shippingClassId,
      'reviewsAllowed': instance.reviewsAllowed,
      'averageRating': instance.averageRating,
      'ratingCount': instance.ratingCount,
      'relatedIds': instance.relatedIds,
      'upsellIds': instance.upsellIds,
      'crossSellIds': instance.crossSellIds,
      'parentId': instance.parentId,
      'purchaseNote': instance.purchaseNote,
      'categories': instance.categories,
      'tags': instance.tags,
      'images': instance.images,
      'attributes': instance.attributes,
      'defaultAttributes': instance.defaultAttributes,
      'variations': instance.variations,
      'groupedProducts': instance.groupedProducts,
      'menuOrder': instance.menuOrder,
      'metaData': instance.metaData,
    };
