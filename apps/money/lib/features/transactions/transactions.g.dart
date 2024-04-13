// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionImpl _$$TransactionImplFromJson(Map<String, dynamic> json) =>
    _$TransactionImpl(
      id: json['id'] as String,
      personID: json['personID'] as String?,
      amount: json['amount'] as int? ?? 0,
      notes: json['notes'] as String? ?? 'notes',
      editing: json['editing'] as bool? ?? false,
      created: DateTime.parse(json['created'] as String),
    );

Map<String, dynamic> _$$TransactionImplToJson(_$TransactionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'personID': instance.personID,
      'amount': instance.amount,
      'notes': instance.notes,
      'editing': instance.editing,
      'created': instance.created.toIso8601String(),
    };
