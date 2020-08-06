// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Taxes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Taxes _$TaxesFromJson(Map<String, dynamic> json) {
  return Taxes(
    json['id'] as int,
    json['total'] as String,
    json['subtotal'] as String,
  );
}

Map<String, dynamic> _$TaxesToJson(Taxes instance) => <String, dynamic>{
      'id': instance.id,
      'total': instance.total,
      'subtotal': instance.subtotal,
    };
