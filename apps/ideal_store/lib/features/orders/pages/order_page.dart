// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:ideal_store/features/orders/components/order_builder.dart';
import 'package:ideal_store/main.dart';

class OrderPage extends UI {
  static const path = '/order';

  const OrderPage({
    required this.orderID,
  });
  final String orderID;
  @override
  Widget build(BuildContext context) {
    return OrderBuilder(
      orderID: orderID,
      builder: (builder) {
        return Scaffold();
      },
    );
  }
}
