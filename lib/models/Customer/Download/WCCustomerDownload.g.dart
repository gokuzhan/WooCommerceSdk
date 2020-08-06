// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCCustomerDownload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCCustomerDownload _$WCCustomerDownloadFromJson(Map<String, dynamic> json) {
  return WCCustomerDownload(
    json['downloadId'] as String,
    json['downloadUrl'] as String,
    json['productId'] as int,
    json['productName'] as String,
    json['downloadName'] as String,
    json['orderId'] as int,
    json['orderKey'] as String,
    json['downloadsRemaining'] as String,
    json['accessExpires'] as String,
    json['accessExpiresGmt'] as String,
  )..file = json['file'] == null
      ? null
      : WCCustomerDownloadFile.fromJson(json['file'] as Map<String, dynamic>);
}

Map<String, dynamic> _$WCCustomerDownloadToJson(WCCustomerDownload instance) =>
    <String, dynamic>{
      'downloadId': instance.downloadId,
      'downloadUrl': instance.downloadUrl,
      'productId': instance.productId,
      'productName': instance.productName,
      'downloadName': instance.downloadName,
      'orderId': instance.orderId,
      'orderKey': instance.orderKey,
      'downloadsRemaining': instance.downloadsRemaining,
      'accessExpires': instance.accessExpires,
      'accessExpiresGmt': instance.accessExpiresGmt,
      'file': instance.file,
    };
