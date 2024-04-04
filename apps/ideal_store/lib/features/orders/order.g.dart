// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
      orderID: json['orderID'] as String,
      editing: json['editing'] as bool? ?? true,
      orderStatus:
          $enumDecodeNullable(_$OrderStatusEnumMap, json['orderStatus']) ??
              OrderStatus.ordered,
      createdOn: DateTime.parse(json['createdOn'] as String),
      customerID: json['customerID'] as String,
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) =>
    <String, dynamic>{
      'orderID': instance.orderID,
      'editing': instance.editing,
      'orderStatus': _$OrderStatusEnumMap[instance.orderStatus]!,
      'createdOn': instance.createdOn.toIso8601String(),
      'customerID': instance.customerID,
      'products': instance.products,
    };

const _$OrderStatusEnumMap = {
  OrderStatus.ordered: 'ordered',
  OrderStatus.delivering: 'delivering',
  OrderStatus.complete: 'complete',
};

_$OrdersImpl _$$OrdersImplFromJson(Map<String, dynamic> json) => _$OrdersImpl(
      cache: (json['cache'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, Order.fromJson(e as Map<String, dynamic>)),
          ) ??
          const <String, Order>{},
    );

Map<String, dynamic> _$$OrdersImplToJson(_$OrdersImpl instance) =>
    <String, dynamic>{
      'cache': instance.cache,
    };
