import 'package:json_annotation/json_annotation.dart';

import 'WCProductReviewCollection.dart';
import 'WCProductReviewSelf.dart';
import 'WCProductReviewUp.dart';

part 'WCProductReviewLinks.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCProductReviewLinks {
  final List<WCProductReviewSelf> self;
  final List<WCProductReviewCollection> collection;
  final List<WCProductReviewUp> up;

  WCProductReviewLinks(this.self, this.collection, this.up);

  factory WCProductReviewLinks.fromJson(Map<String, dynamic> json) =>
      _$WCProductReviewLinksFromJson(json);

  Map<String, dynamic> toJson() => _$WCProductReviewLinksToJson(this);
}
