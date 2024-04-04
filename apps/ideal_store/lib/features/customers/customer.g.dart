// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customer _$CustomerFromJson(Map<String, dynamic> json) => Customer();

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{};

Customers _$CustomersFromJson(Map<String, dynamic> json) => Customers(
      cache: (json['cache'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Customer.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$CustomersToJson(Customers instance) => <String, dynamic>{
      'cache': instance.cache,
    };
