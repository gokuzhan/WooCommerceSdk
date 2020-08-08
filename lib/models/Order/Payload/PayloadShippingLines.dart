import 'package:json_annotation/json_annotation.dart';

part 'PayloadShippingLines.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PayloadShippingLines {
  final String methodId;
  final String methodTitle;
  final String total;

  PayloadShippingLines(this.methodId, this.methodTitle, this.total);

  factory PayloadShippingLines.fromJson(Map<String, dynamic> json) =>
      _$PayloadShippingLinesFromJson(json);

  Map<String, dynamic> toJson() => _$PayloadShippingLinesToJson(this);
}
