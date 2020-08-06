import 'package:json_annotation/json_annotation.dart';

part 'WCJwtResponse.g.dart';

@JsonSerializable()
class WCJwtResponse {
  final String token;
  final String userEmail;
  final String userNicename;
  final String userDisplayName;

  WCJwtResponse(
      this.token, this.userEmail, this.userNicename, this.userDisplayName);

  factory WCJwtResponse.fromJson(Map<String, dynamic> json) =>
      _$WCJwtResponseFromJson(json);

  Map<String, dynamic> toJson() => _$WCJwtResponseToJson(this);
}
