// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ideal_store/features/orders/order.dart';
import 'package:ideal_store/main.dart';

class OrderBuilder extends UI {
  const OrderBuilder({
    required this.orderID,
    required this.builder,
  });
  final String orderID;
  final Widget Function(Order order) builder;

  @override
  Widget build(BuildContext context) => builder(Order.fromID(orderID));
}
