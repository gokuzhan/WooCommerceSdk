import 'package:json_annotation/json_annotation.dart';

part 'Refunds.g.dart';

@JsonSerializable()
class Refunds {
  final int id;
  final String reason;
  final String total;

  Refunds(this.id, this.reason, this.total);

  factory Refunds.fromJson(Map<String, dynamic> json) =>
      _$RefundsFromJson(json);

  Map<String, dynamic> toJson() => _$RefundsToJson(this);
}
