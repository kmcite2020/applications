// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerImpl _$$CustomerImplFromJson(Map<String, dynamic> json) =>
    _$CustomerImpl(
      customerID: json['customerID'] as String? ?? '',
      name: json['name'] as String? ?? '',
      city: json['city'] as String,
      editing: json['editing'] as bool? ?? false,
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$$CustomerImplToJson(_$CustomerImpl instance) =>
    <String, dynamic>{
      'customerID': instance.customerID,
      'name': instance.name,
      'city': instance.city,
      'editing': instance.editing,
      'products': instance.products,
    };
