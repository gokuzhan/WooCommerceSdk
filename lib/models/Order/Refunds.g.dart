// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Refunds.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Refunds _$RefundsFromJson(Map<String, dynamic> json) {
  return Refunds(
    json['id'] as int,
    json['reason'] as String,
    json['total'] as String,
  );
}

Map<String, dynamic> _$RefundsToJson(Refunds instance) => <String, dynamic>{
      'id': instance.id,
      'reason': instance.reason,
      'total': instance.total,
    };
