import 'package:json_annotation/json_annotation.dart';

part 'WCProductDownload.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCProductDownload {
  final String id;
  final String name;
  final String file;

  WCProductDownload(this.id, this.name, this.file);

  factory WCProductDownload.fromJson(Map<String, dynamic> json) =>
      _$WCProductDownloadFromJson(json);

  Map<String, dynamic> toJson() => _$WCProductDownloadToJson(this);
}
