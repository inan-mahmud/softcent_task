// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionsResponse _$TransactionsResponseFromJson(
        Map<String, dynamic> json) =>
    TransactionsResponse(
      transactionId: json['transaction_id'] as String?,
      shopName: json['shop_name'] as String?,
      shopLogo: json['shop_logo'] as String?,
      paymentType: json['payment_type'] as String?,
      timestamp: json['timestamp'] as String?,
      amountSend: json['amount_send'] as int?,
      amountRecieved: json['amount_recieved'] as int?,
    );

Map<String, dynamic> _$TransactionsResponseToJson(
        TransactionsResponse instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
      'shop_name': instance.shopName,
      'shop_logo': instance.shopLogo,
      'payment_type': instance.paymentType,
      'timestamp': instance.timestamp,
      'amount_send': instance.amountSend,
      'amount_recieved': instance.amountRecieved,
    };
