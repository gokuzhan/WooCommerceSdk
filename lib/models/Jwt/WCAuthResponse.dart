import 'package:json_annotation/json_annotation.dart';

part 'WCAuthResponse.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCAuthResponse {
  final Map<String, dynamic> wp_user;
  final String access_token;
  final String refresh_token;
  final int expires_in;

  WCAuthResponse(
      this.wp_user, this.access_token, this.refresh_token, this.expires_in);

  factory WCAuthResponse.fromJson(Map<String, dynamic> json) =>
      _$WCAuthResponseFromJson(json);

  Map<String, dynamic> toJson() => _$WCAuthResponseToJson(this);
}
