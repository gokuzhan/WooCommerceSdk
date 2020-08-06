import 'package:json_annotation/json_annotation.dart';

import 'WCCustomerDownloadFile.dart';

part 'WCCustomerDownload.g.dart';

@JsonSerializable()
class WCCustomerDownload {
  final String downloadId;
  final String downloadUrl;
  final int productId;
  final String productName;
  final String downloadName;
  final int orderId;
  final String orderKey;
  final String downloadsRemaining;
  final String accessExpires;
  final String accessExpiresGmt;
  WCCustomerDownloadFile file;

  WCCustomerDownload(
      this.downloadId,
      this.downloadUrl,
      this.productId,
      this.productName,
      this.downloadName,
      this.orderId,
      this.orderKey,
      this.downloadsRemaining,
      this.accessExpires,
      this.accessExpiresGmt);

  factory WCCustomerDownload.fromJson(Map<String, dynamic> json) =>
      _$WCCustomerDownloadFromJson(json);

  Map<String, dynamic> toJson() => _$WCCustomerDownloadToJson(this);
}
