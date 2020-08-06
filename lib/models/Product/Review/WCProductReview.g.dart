// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCProductReview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCProductReview _$WCProductReviewFromJson(Map<String, dynamic> json) {
  return WCProductReview(
    json['id'] as int,
    json['dateCreated'] as String,
    json['dateCreatedGmt'] as String,
    json['productId'] as int,
    json['status'] as String,
    json['reviewer'] as String,
    json['reviewerEmail'] as String,
    json['review'] as String,
    json['rating'] as int,
    json['verified'] as bool,
    json['reviewerAvatarUrls'] as Map<String, dynamic>,
    json['links'] == null
        ? null
        : WCProductReviewLinks.fromJson(json['links'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WCProductReviewToJson(WCProductReview instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateCreated': instance.dateCreated,
      'dateCreatedGmt': instance.dateCreatedGmt,
      'productId': instance.productId,
      'status': instance.status,
      'reviewer': instance.reviewer,
      'reviewerEmail': instance.reviewerEmail,
      'review': instance.review,
      'rating': instance.rating,
      'verified': instance.verified,
      'reviewerAvatarUrls': instance.reviewerAvatarUrls,
      'links': instance.links,
    };
