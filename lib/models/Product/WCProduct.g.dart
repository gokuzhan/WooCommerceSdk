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
    json['catalog_visibility'] as String,
    json['description'] as String,
    json['short_description'] as String,
    json['sku'] as String,
    json['price'] as String,
    json['regular_price'] as String,
    json['sale_price'] as String,
    json['price_html'] as String,
    json['on_sale'] as bool,
    json['purchasable'] as bool,
    json['total_sales'] as int,
    json['virtual'] as bool,
    json['downloadable'] as bool,
    (json['downloads'] as List)
        ?.map((e) => e == null
            ? null
            : WCProductDownload.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['download_limit'] as int,
    json['download_expiry'] as int,
    json['external_url'] as String,
    json['button_text'] as String,
    json['tax_status'] as String,
    json['tax_class'] as String,
    json['manage_stock'] as bool,
    json['stock_quantity'] as int,
    json['stock_status'] as String,
    json['backorders'] as String,
    json['backorders_allowed'] as bool,
    json['backordered'] as bool,
    json['sold_individually'] as bool,
    json['weight'] as String,
    json['dimensions'] == null
        ? null
        : WCProductDimension.fromJson(
            json['dimensions'] as Map<String, dynamic>),
    json['shipping_required'] as bool,
    json['shipping_taxable'] as bool,
    json['shipping_class'] as String,
    json['shipping_class_id'] as int,
    json['reviews_allowed'] as bool,
    json['average_rating'] as String,
    json['rating_count'] as int,
    (json['related_ids'] as List)?.map((e) => e as int)?.toList(),
    (json['upsell_ids'] as List)?.map((e) => e as int)?.toList(),
    (json['cross_sell_ids'] as List)?.map((e) => e as int)?.toList(),
    json['parent_id'] as int,
    json['purchase_note'] as String,
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
    (json['default_attributes'] as List)
        ?.map((e) => e == null
            ? null
            : WCProductDefaultAttribute.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['variations'] as List)?.map((e) => e as int)?.toList(),
    (json['grouped_products'] as List)?.map((e) => e as int)?.toList(),
    json['menu_order'] as int,
    (json['meta_data'] as List)
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
      'catalog_visibility': instance.catalogVisibility,
      'description': instance.description,
      'short_description': instance.shortDescription,
      'sku': instance.sku,
      'price': instance.price,
      'regular_price': instance.regularPrice,
      'sale_price': instance.salePrice,
      'price_html': instance.priceHtml,
      'on_sale': instance.onSale,
      'purchasable': instance.purchasable,
      'total_sales': instance.totalSales,
      'virtual': instance.virtual,
      'downloadable': instance.downloadable,
      'downloads': instance.downloads,
      'download_limit': instance.downloadLimit,
      'download_expiry': instance.downloadExpiry,
      'external_url': instance.externalUrl,
      'button_text': instance.buttonText,
      'tax_status': instance.taxStatus,
      'tax_class': instance.taxClass,
      'manage_stock': instance.manageStock,
      'stock_quantity': instance.stockQuantity,
      'stock_status': instance.stockStatus,
      'backorders': instance.backorders,
      'backorders_allowed': instance.backordersAllowed,
      'backordered': instance.backordered,
      'sold_individually': instance.soldIndividually,
      'weight': instance.weight,
      'dimensions': instance.dimensions,
      'shipping_required': instance.shippingRequired,
      'shipping_taxable': instance.shippingTaxable,
      'shipping_class': instance.shippingClass,
      'shipping_class_id': instance.shippingClassId,
      'reviews_allowed': instance.reviewsAllowed,
      'average_rating': instance.averageRating,
      'rating_count': instance.ratingCount,
      'related_ids': instance.relatedIds,
      'upsell_ids': instance.upsellIds,
      'cross_sell_ids': instance.crossSellIds,
      'parent_id': instance.parentId,
      'purchase_note': instance.purchaseNote,
      'categories': instance.categories,
      'tags': instance.tags,
      'images': instance.images,
      'attributes': instance.attributes,
      'default_attributes': instance.defaultAttributes,
      'variations': instance.variations,
      'grouped_products': instance.groupedProducts,
      'menu_order': instance.menuOrder,
      'meta_data': instance.metaData,
    };
