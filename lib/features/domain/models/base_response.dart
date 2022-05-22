import 'package:json_annotation/json_annotation.dart';
import 'package:softcent_task/features/domain/models/data_response.dart';

part 'base_response.g.dart';

@JsonSerializable()
class BaseResponse {
  @JsonKey(name: "success")
  bool? success;

  @JsonKey(name: "data")
  DataResponse? data;

  BaseResponse({this.success, this.data});

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);
}
