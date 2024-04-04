// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionsImpl _$$TransactionsImplFromJson(Map<String, dynamic> json) =>
    _$TransactionsImpl(
      data: (json['data'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, Transaction.fromJson(e)),
          ) ??
          const <String, Transaction>{},
    );

Map<String, dynamic> _$$TransactionsImplToJson(_$TransactionsImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$TransactionImpl _$$TransactionImplFromJson(Map<String, dynamic> json) =>
    _$TransactionImpl(
      transactionID: json['transactionID'] as String,
      personID: json['personID'] as String?,
      amount: json['amount'] as int? ?? 0,
      notes: json['notes'] as String? ?? 'notes',
      editing: json['editing'] as bool? ?? false,
      created: DateTime.parse(json['created'] as String),
    );

Map<String, dynamic> _$$TransactionImplToJson(_$TransactionImpl instance) =>
    <String, dynamic>{
      'transactionID': instance.transactionID,
      'personID': instance.personID,
      'amount': instance.amount,
      'notes': instance.notes,
      'editing': instance.editing,
      'created': instance.created.toIso8601String(),
    };
