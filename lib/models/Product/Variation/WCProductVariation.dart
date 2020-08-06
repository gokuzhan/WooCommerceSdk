import 'package:json_annotation/json_annotation.dart';

import 'WCProductVariationAttribute.dart';
import 'WCProductVariationDimension.dart';
import 'WCProductVariationDownload.dart';
import 'WCProductVariationImage.dart';
import 'WCProductVariationMetaData.dart';

part 'WCProductVariation.g.dart';

@JsonSerializable()
class WCProductVariation {
  final int id;
  final DateTime dateCreated;
  final DateTime dateCreatedGmt;
  final DateTime dateModified;
  final DateTime dateModifiedGmt;
  final String description;
  final String permalink;
  final String sku;
  final String price;
  final String regularPrice;
  final String salePrice;
  final DateTime dateOnSaleFrom;
  final DateTime dateOnSaleFromGmt;
  final DateTime dateOnSaleTo;
  final DateTime dateOnSaleToGmt;
  final bool onSale;
  final String status;
  final bool purchasable;
  final bool virtual;
  final bool downloadable;
  final List<WCProductVariationDownload> downloads;
  final int downloadLimit;
  final int downloadExpiry;
  final String taxStatus;
  final String taxClass;
  final bool manageStock;
  final int stockQuantity;
  final String stockStatus;
  final String backorders;
  final bool backordersAllowed;
  final bool backordered;
  final List<WCProductVariationAttribute> attributes;
  final String weight;
  final String shippingClass;
  final int shippingClassId;
  final int menuOrder;
  final WCProductVariationDimension dimensions;
  final List<WCProductVariationMetaData> metaData;
  final WCProductVariationImage image;

  WCProductVariation(
      this.id,
      this.dateCreated,
      this.dateCreatedGmt,
      this.dateModified,
      this.dateModifiedGmt,
      this.description,
      this.permalink,
      this.sku,
      this.price,
      this.regularPrice,
      this.salePrice,
      this.dateOnSaleFrom,
      this.dateOnSaleFromGmt,
      this.dateOnSaleTo,
      this.dateOnSaleToGmt,
      this.onSale,
      this.status,
      this.purchasable,
      this.virtual,
      this.downloadable,
      this.downloads,
      this.downloadLimit,
      this.downloadExpiry,
      this.taxStatus,
      this.taxClass,
      this.manageStock,
      this.stockQuantity,
      this.stockStatus,
      this.backorders,
      this.backordersAllowed,
      this.backordered,
      this.attributes,
      this.weight,
      this.shippingClass,
      this.shippingClassId,
      this.menuOrder,
      this.dimensions,
      this.metaData,
      this.image);

  factory WCProductVariation.fromJson(Map<String, dynamic> json) =>
      _$WCProductVariationFromJson(json);

  Map<String, dynamic> toJson() => _$WCProductVariationToJson(this);
}
