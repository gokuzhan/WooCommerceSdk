import 'package:json_annotation/json_annotation.dart';

part 'WCCustomerDownloadFile.g.dart';

@JsonSerializable()
class WCCustomerDownloadFile {
  final String name;
  final String file;

  WCCustomerDownloadFile(this.name, this.file);

  factory WCCustomerDownloadFile.fromJson(Map<String, dynamic> json) =>
      _$WCCustomerDownloadFileFromJson(json);

  Map<String, dynamic> toJson() => _$WCCustomerDownloadFileToJson(this);
}
