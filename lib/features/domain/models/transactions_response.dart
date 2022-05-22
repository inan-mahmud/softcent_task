import 'package:json_annotation/json_annotation.dart';

part 'transactions_response.g.dart';

@JsonSerializable()
class TransactionsResponse {
  TransactionsResponse({
    this.transactionId,
    this.shopName,
    this.shopLogo,
    this.paymentType,
    this.timestamp,
    this.amountSend,
    this.amountRecieved,});

  @JsonKey(name: "transaction_id")
  String? transactionId;

  @JsonKey(name: "shop_name")
  String? shopName;

  @JsonKey(name: "shop_logo")
  String? shopLogo;

  @JsonKey(name: "payment_type")
  String? paymentType;

  @JsonKey(name: "timestamp")
  String? timestamp;


  @JsonKey(name: "amount_send")
  int? amountSend;

  @JsonKey(name: "amount_recieved")
  int? amountRecieved;

  factory TransactionsResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionsResponseToJson(this);
}