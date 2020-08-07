import 'package:json_annotation/json_annotation.dart';

part 'WCError.g.dart';

@JsonSerializable()
class WCError {
  final String code;
  final String message;
  final Map<String, dynamic> data;

  WCError(this.code, this.message, this.data);

  factory WCError.fromJson(Map<String, dynamic> json) =>
      _$WCErrorFromJson(json);

  Map<String, dynamic> toJson() => _$WCErrorToJson(this);

  @override
  String toString() {
    // TODO: implement toString
    return "WCError!\ncode: $code\nmessage: $message}";
  }
}
