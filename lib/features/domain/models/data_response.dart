import 'package:json_annotation/json_annotation.dart';
import 'package:softcent_task/features/domain/models/transactions_response.dart';

part 'data_response.g.dart';

@JsonSerializable()
class DataResponse {
  @JsonKey(name: "transactions")
  List<TransactionsResponse>? transactions;

  DataResponse({
    this.transactions,
  });

  factory DataResponse.fromJson(Map<String, dynamic> json) =>
      _$DataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DataResponseToJson(this);
}
