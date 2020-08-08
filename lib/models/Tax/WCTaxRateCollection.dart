import 'package:json_annotation/json_annotation.dart';

part 'WCTaxRateCollection.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCTaxRateCollection {
  final String href;

  WCTaxRateCollection(this.href);

  factory WCTaxRateCollection.fromJson(Map<String, dynamic> json) =>
      _$WCTaxRateCollectionFromJson(json);

  Map<String, dynamic> toJson() => _$WCTaxRateCollectionToJson(this);
}
