import 'package:json_annotation/json_annotation.dart';

part 'WCProductReviewUp.g.dart';

@JsonSerializable()
class WCProductReviewUp {
  final String href;

  WCProductReviewUp(this.href);

  factory WCProductReviewUp.fromJson(Map<String, dynamic> json) =>
      _$WCProductReviewUpFromJson(json);

  Map<String, dynamic> toJson() => _$WCProductReviewUpToJson(this);
}
