import 'package:json_annotation/json_annotation.dart';

part 'WCProductReviewCollection.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCProductReviewCollection {
  final String href;

  WCProductReviewCollection(this.href);

  factory WCProductReviewCollection.fromJson(Map<String, dynamic> json) =>
      _$WCProductReviewCollectionFromJson(json);

  Map<String, dynamic> toJson() => _$WCProductReviewCollectionToJson(this);
}
