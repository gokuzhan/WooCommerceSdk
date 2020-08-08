import 'package:json_annotation/json_annotation.dart';

part 'WCProductReviewSelf.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCProductReviewSelf {
  final String href;

  WCProductReviewSelf(this.href);

  factory WCProductReviewSelf.fromJson(Map<String, dynamic> json) =>
      _$WCProductReviewSelfFromJson(json);

  Map<String, dynamic> toJson() => _$WCProductReviewSelfToJson(this);
}
