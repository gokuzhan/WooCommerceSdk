// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCCustomerDownload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCCustomerDownload _$WCCustomerDownloadFromJson(Map<String, dynamic> json) {
  return WCCustomerDownload(
    json['download_id'] as String,
    json['download_url'] as String,
    json['product_id'] as int,
    json['product_name'] as String,
    json['download_name'] as String,
    json['order_id'] as int,
    json['order_key'] as String,
    json['downloads_remaining'] as String,
    json['access_expires'] as String,
    json['access_expires_gmt'] as String,
  )..file = json['file'] == null
      ? null
      : WCCustomerDownloadFile.fromJson(json['file'] as Map<String, dynamic>);
}

Map<String, dynamic> _$WCCustomerDownloadToJson(WCCustomerDownload instance) =>
    <String, dynamic>{
      'download_id': instance.downloadId,
      'download_url': instance.downloadUrl,
      'product_id': instance.productId,
      'product_name': instance.productName,
      'download_name': instance.downloadName,
      'order_id': instance.orderId,
      'order_key': instance.orderKey,
      'downloads_remaining': instance.downloadsRemaining,
      'access_expires': instance.accessExpires,
      'access_expires_gmt': instance.accessExpiresGmt,
      'file': instance.file,
    };
