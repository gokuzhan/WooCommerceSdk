import 'package:json_annotation/json_annotation.dart';
import 'package:woocommerce_sdk/woocommerce_sdk.dart';

part 'Auth.g.dart';

@JsonSerializable()
class Auth {
  static WCJwtDecoder _jwtInstance;

  Auth({token}) {
    _jwtInstance = new WCJwtDecoder(token: token);
  }

  String get token => _jwtInstance.token;

  Future<Map<String, dynamic>> get decoded async => await _jwtInstance.decode();

  Future<bool> get isExpired async => await _jwtInstance.isExpired();

  Future<String> get customerId async => (await decoded)["sub"];

  factory Auth.fromJson(Map<String, dynamic> json) => _$AuthFromJson(json);

  Map<String, dynamic> toJson() => _$AuthToJson(this);
}
