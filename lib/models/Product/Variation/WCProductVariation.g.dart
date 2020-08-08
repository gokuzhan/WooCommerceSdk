// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCProductVariation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCProductVariation _$WCProductVariationFromJson(Map<String, dynamic> json) {
  return WCProductVariation(
    json['id'] as int,
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
    json['description'] as String,
    json['permalink'] as String,
    json['sku'] as String,
    json['price'] as String,
    json['regular_price'] as String,
    json['sale_price'] as String,
    json['date_on_sale_from'] == null
        ? null
        : DateTime.parse(json['date_on_sale_from'] as String),
    json['date_on_sale_from_gmt'] == null
        ? null
        : DateTime.parse(json['date_on_sale_from_gmt'] as String),
    json['date_on_sale_to'] == null
        ? null
        : DateTime.parse(json['date_on_sale_to'] as String),
    json['date_on_sale_to_gmt'] == null
        ? null
        : DateTime.parse(json['date_on_sale_to_gmt'] as String),
    json['on_sale'] as bool,
    json['status'] as String,
    json['purchasable'] as bool,
    json['virtual'] as bool,
    json['downloadable'] as bool,
    (json['downloads'] as List)
        ?.map((e) => e == null
            ? null
            : WCProductVariationDownload.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['download_limit'] as int,
    json['download_expiry'] as int,
    json['tax_status'] as String,
    json['tax_class'] as String,
    json['manage_stock'] as bool,
    json['stock_quantity'] as int,
    json['stock_status'] as String,
    json['backorders'] as String,
    json['backorders_allowed'] as bool,
    json['backordered'] as bool,
    (json['attributes'] as List)
        ?.map((e) => e == null
            ? null
            : WCProductVariationAttribute.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['weight'] as String,
    json['shipping_class'] as String,
    json['shipping_class_id'] as int,
    json['menu_order'] as int,
    json['dimensions'] == null
        ? null
        : WCProductVariationDimension.fromJson(
            json['dimensions'] as Map<String, dynamic>),
    (json['meta_data'] as List)
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
      'date_created': instance.dateCreated?.toIso8601String(),
      'date_created_gmt': instance.dateCreatedGmt?.toIso8601String(),
      'date_modified': instance.dateModified?.toIso8601String(),
      'date_modified_gmt': instance.dateModifiedGmt?.toIso8601String(),
      'description': instance.description,
      'permalink': instance.permalink,
      'sku': instance.sku,
      'price': instance.price,
      'regular_price': instance.regularPrice,
      'sale_price': instance.salePrice,
      'date_on_sale_from': instance.dateOnSaleFrom?.toIso8601String(),
      'date_on_sale_from_gmt': instance.dateOnSaleFromGmt?.toIso8601String(),
      'date_on_sale_to': instance.dateOnSaleTo?.toIso8601String(),
      'date_on_sale_to_gmt': instance.dateOnSaleToGmt?.toIso8601String(),
      'on_sale': instance.onSale,
      'status': instance.status,
      'purchasable': instance.purchasable,
      'virtual': instance.virtual,
      'downloadable': instance.downloadable,
      'downloads': instance.downloads,
      'download_limit': instance.downloadLimit,
      'download_expiry': instance.downloadExpiry,
      'tax_status': instance.taxStatus,
      'tax_class': instance.taxClass,
      'manage_stock': instance.manageStock,
      'stock_quantity': instance.stockQuantity,
      'stock_status': instance.stockStatus,
      'backorders': instance.backorders,
      'backorders_allowed': instance.backordersAllowed,
      'backordered': instance.backordered,
      'attributes': instance.attributes,
      'weight': instance.weight,
      'shipping_class': instance.shippingClass,
      'shipping_class_id': instance.shippingClassId,
      'menu_order': instance.menuOrder,
      'dimensions': instance.dimensions,
      'meta_data': instance.metaData,
      'image': instance.image,
    };
