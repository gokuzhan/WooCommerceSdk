import 'package:json_annotation/json_annotation.dart';

part 'WCErrorData.g.dart';

@JsonSerializable()
class WCErrorData {
  final int status;

  WCErrorData(this.status);

  factory WCErrorData.fromJson(Map<String, dynamic> json) =>
      _$WCErrorDataFromJson(json);

  Map<String, dynamic> toJson() => _$WCErrorDataToJson(this);

  int get getStatus => this.status;
}
