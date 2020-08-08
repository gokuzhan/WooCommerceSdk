import 'package:json_annotation/json_annotation.dart';

part 'WCProductVariationDownload.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCProductVariationDownload {
  final String id;
  final String name;
  final String file;

  WCProductVariationDownload(this.id, this.name, this.file);

  factory WCProductVariationDownload.fromJson(Map<String, dynamic> json) =>
      _$WCProductVariationDownloadFromJson(json);

  Map<String, dynamic> toJson() => _$WCProductVariationDownloadToJson(this);
}
