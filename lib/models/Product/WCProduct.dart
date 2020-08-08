import 'package:json_annotation/json_annotation.dart';

import 'Category/WCProductCategory.dart';
import 'WCProductDefaultAttribute.dart';
import 'WCProductDimension.dart';
import 'WCProductDownload.dart';
import 'WCProductImage.dart';
import 'WCProductItemAttribute.dart';
import 'WCProductItemTag.dart';
import 'WCProductMetaData.dart';

part 'WCProduct.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCProduct {
  final int id;
  final String name;
  final String slug;
  final String permalink;
  final String type;
  final String status;
  final bool featured;
  final String catalogVisibility;
  final String description;
  final String shortDescription;
  final String sku;
  final String price;
  final String regularPrice;
  final String salePrice;
  final String priceHtml;
  final bool onSale;
  final bool purchasable;
  final int totalSales;
  final bool virtual;
  final bool downloadable;
  final List<WCProductDownload> downloads;
  final int downloadLimit;
  final int downloadExpiry;
  final String externalUrl;
  final String buttonText;
  final String taxStatus;
  final String taxClass;
  final bool manageStock;
  final int stockQuantity;
  final String stockStatus;
  final String backorders;
  final bool backordersAllowed;
  final bool backordered;
  final bool soldIndividually;
  final String weight;
  final WCProductDimension dimensions;
  final bool shippingRequired;
  final bool shippingTaxable;
  final String shippingClass;
  final int shippingClassId;
  final bool reviewsAllowed;
  final String averageRating;
  final int ratingCount;
  final List<int> relatedIds;
  final List<int> upsellIds;
  final List<int> crossSellIds;
  final int parentId;
  final String purchaseNote;
  final List<WCProductCategory> categories;
  final List<WCProductItemTag> tags;
  final List<WCProductImage> images;
  final List<WCProductItemAttribute> attributes;
  final List<WCProductDefaultAttribute> defaultAttributes;
  final List<int> variations;
  final List<int> groupedProducts;
  final int menuOrder;
  final List<WCProductMetaData> metaData;

  WCProduct(
      this.id,
      this.name,
      this.slug,
      this.permalink,
      this.type,
      this.status,
      this.featured,
      this.catalogVisibility,
      this.description,
      this.shortDescription,
      this.sku,
      this.price,
      this.regularPrice,
      this.salePrice,
      this.priceHtml,
      this.onSale,
      this.purchasable,
      this.totalSales,
      this.virtual,
      this.downloadable,
      this.downloads,
      this.downloadLimit,
      this.downloadExpiry,
      this.externalUrl,
      this.buttonText,
      this.taxStatus,
      this.taxClass,
      this.manageStock,
      this.stockQuantity,
      this.stockStatus,
      this.backorders,
      this.backordersAllowed,
      this.backordered,
      this.soldIndividually,
      this.weight,
      this.dimensions,
      this.shippingRequired,
      this.shippingTaxable,
      this.shippingClass,
      this.shippingClassId,
      this.reviewsAllowed,
      this.averageRating,
      this.ratingCount,
      this.relatedIds,
      this.upsellIds,
      this.crossSellIds,
      this.parentId,
      this.purchaseNote,
      this.categories,
      this.tags,
      this.images,
      this.attributes,
      this.defaultAttributes,
      this.variations,
      this.groupedProducts,
      this.menuOrder,
      this.metaData);

  factory WCProduct.fromJson(Map<String, dynamic> json) =>
      _$WCProductFromJson(json);

  Map<String, dynamic> toJson() => _$WCProductToJson(this);
}
