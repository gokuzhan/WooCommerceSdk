import 'package:json_annotation/json_annotation.dart';
import 'package:woocommerce_sdk/models/Auth/Auth.dart';

part 'WCAuthResponse.g.dart';

@JsonSerializable()
class WCAuthResponse {
  final bool success;
  final int statusCode;
  final String code;
  final String message;
  final Auth data;

  WCAuthResponse(
      this.success, this.statusCode, this.code, this.message, this.data);

  factory WCAuthResponse.fromJson(Map<String, dynamic> json) =>
      _$WCAuthResponseFromJson(json);

  Map<String, dynamic> toJson() => _$WCAuthResponseToJson(this);
}
