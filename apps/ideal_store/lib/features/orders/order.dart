import 'package:ideal_store/main.dart';
part 'order.freezed.dart';
part 'order.g.dart';

enum OrderStatus {
  ordered,
  delivering,
  complete;
}

@freezed
class Order with _$Order {
  const factory Order.raw({
    required final String orderID,
    @Default(true) final bool editing,
    @Default(OrderStatus.ordered) final OrderStatus orderStatus,
    required final DateTime createdOn,
    required final String customerID,
    @Default(<String>[]) final List<String> products,
  }) = _Order;
  const Order._();
  void call(Order order) => ordersRM().setOrder(order);

  factory Order.fromID(String orderID) => ordersRM().cache[orderID]!;
  factory Order.create(String customerID) => Order.raw(
        orderID: randomID,
        createdOn: DateTime.now(),
        customerID: customerID,
      );
  void addProductToOrder(String productID) {
    ordersRM().setOrder(
      copyWith(
        products: List.of(products)..add(productID),
      ),
    );
  }

  void deleteProductFromOrder(String productID) {
    ordersRM().setOrder(
      copyWith(
        products: List.of(products)..remove(productID),
      ),
    );
  }

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}

final ordersRM = Simple(
  Orders(),
  // key: 'ordersNEW',
  // fromJson: Orders.fromJson,
);

@freezed
class Orders with _$Orders {
  const factory Orders({
    @Default(<String, Order>{}) final Map<String, Order> cache,
  }) = _Orders;
  const Orders._();
  List<Order> get orders => cache.values.toList();

  void setOrder(Order order) {
    ordersRM(
      copyWith(
        cache: Map.of(cache)..[order.orderID] = order,
      ),
    );
  }

  void deleteOrder(String orderID) {
    ordersRM(
      copyWith(
        cache: Map.of(cache)..remove(orderID),
      ),
    );
  }

  factory Orders.fromJson(Map<String, dynamic> json) => _$OrdersFromJson(json);
}
