import 'package:json_annotation/json_annotation.dart';

import 'WCProductReviewLinks.dart';

part 'WCProductReview.g.dart';

@JsonSerializable()
class WCProductReview {
  final int id;
  final String dateCreated;
  final String dateCreatedGmt;
  final int productId;
  final String status;
  final String reviewer;
  final String reviewerEmail;
  final String review;
  final int rating;
  final bool verified;
  final Map<String, dynamic> reviewerAvatarUrls;
  final WCProductReviewLinks links;

  WCProductReview(
      this.id,
      this.dateCreated,
      this.dateCreatedGmt,
      this.productId,
      this.status,
      this.reviewer,
      this.reviewerEmail,
      this.review,
      this.rating,
      this.verified,
      this.reviewerAvatarUrls,
      this.links);

  factory WCProductReview.fromJson(Map<String, dynamic> json) =>
      _$WCProductReviewFromJson(json);

  Map<String, dynamic> toJson() => _$WCProductReviewToJson(this);
}
