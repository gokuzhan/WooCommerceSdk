// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCProductReview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCProductReview _$WCProductReviewFromJson(Map<String, dynamic> json) {
  return WCProductReview(
    json['id'] as int,
    json['date_created'] as String,
    json['date_created_gmt'] as String,
    json['product_id'] as int,
    json['status'] as String,
    json['reviewer'] as String,
    json['reviewer_email'] as String,
    json['review'] as String,
    json['rating'] as int,
    json['verified'] as bool,
    json['reviewer_avatar_urls'] as Map<String, dynamic>,
    json['links'] == null
        ? null
        : WCProductReviewLinks.fromJson(json['links'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WCProductReviewToJson(WCProductReview instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date_created': instance.dateCreated,
      'date_created_gmt': instance.dateCreatedGmt,
      'product_id': instance.productId,
      'status': instance.status,
      'reviewer': instance.reviewer,
      'reviewer_email': instance.reviewerEmail,
      'review': instance.review,
      'rating': instance.rating,
      'verified': instance.verified,
      'reviewer_avatar_urls': instance.reviewerAvatarUrls,
      'links': instance.links,
    };
