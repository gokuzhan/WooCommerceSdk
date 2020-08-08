import 'package:json_annotation/json_annotation.dart';
import 'package:woocommerce_sdk/woocommerce_sdk.dart';

part 'Auth.g.dart';

@JsonSerializable()
class Auth {
  static WCJwtDecoder _jwtInstance;
  final String access_token;
  final String refresh_token;
  final int expires_in;

  Auth(this.access_token, this.refresh_token, this.expires_in) {
    _jwtInstance = new WCJwtDecoder(token: this.access_token);
  }

  Future<Map<String, dynamic>> get decoded async => await _jwtInstance.decode();

  Future<bool> get isExpired async => await _jwtInstance.isExpired();

  Future<int> get customerId async => (await decoded)["sub"].runtimeType != int
      ? int.parse((await decoded)["sub"])
      : (await decoded)["sub"];

  factory Auth.fromJson(Map<String, dynamic> json) => _$AuthFromJson(json);

  Map<String, dynamic> toJson() => _$AuthToJson(this);
}
