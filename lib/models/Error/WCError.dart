import 'package:json_annotation/json_annotation.dart';

import 'WCErrorData.dart';

part 'WCError.g.dart';

@JsonSerializable()
class WCError {
  final String code;
  final String message;
  final WCErrorData data;

  WCError(this.code, this.message, this.data);

  factory WCError.fromJson(Map<String, dynamic> json) =>
      _$WCErrorFromJson(json);

  Map<String, dynamic> toJson() => _$WCErrorToJson(this);

  @override
  String toString() {
    // TODO: implement toString
    return "WooCommerce Error!\ncode: $code\nmessage: $message\nstatus: ${data.status}";
  }
}
