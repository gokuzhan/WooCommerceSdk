import 'package:json_annotation/json_annotation.dart';

part 'WCJwtResponse.g.dart';

@JsonSerializable()
class WCAuthResponse {
  final Map<String, dynamic> wp_user;
  final String access_token;
  final String refresh_token;
  final int expires_in;

  WCAuthResponse(
      this.wp_user, this.access_token, this.refresh_token, this.expires_in);

  factory WCAuthResponse.fromJson(Map<String, dynamic> json) =>
      _$WCJwtResponseFromJson(json);

  Map<String, dynamic> toJson() => _$WCJwtResponseToJson(this);
}
