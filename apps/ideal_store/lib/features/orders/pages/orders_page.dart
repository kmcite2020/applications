// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ideal_store/features/orders/components/order_builder.dart';
import 'package:ideal_store/features/orders/order.dart';
import 'package:ideal_store/main.dart';

class OrdersPage extends UI {
  static const path = '/orders';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Orders'),
        actions: [
          IconButton(
            tooltip: 'Back to Dashboard',
            onPressed: () => navigator.back(),
            icon: Icon(
              Icons.dashboard,
            ),
          ).pad(),
          IconButton(
            tooltip: 'place orders for customer',
            onPressed: () {},
            icon: Icon(Icons.account_box_sharp),
          ).pad(),
        ],
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: ordersRM().orders.length,
          itemBuilder: (context, index) {
            return OrderTile(orderID: ordersRM().orders[index].orderID);
          },
          physics: BouncingScrollPhysics(),
        ),
      ),
    );
  }
}

class OrderTile extends UI {
  const OrderTile({
    required this.orderID,
  });
  final String orderID;
  @override
  Widget build(BuildContext context) {
    return OrderBuilder(
      orderID: orderID,
      builder: (Order order) {
        return ListTile(
          title: order.text(),
          subtitle: Column(
            children: [
              DropdownButtonFormField(
                value: order.orderStatus,
                items: OrderStatus.values
                    .map(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: e.name.toUpperCase().text(),
                      ),
                    )
                    .toList(),
                onChanged: (orderStatus) {
                  order(
                    order.copyWith(orderStatus: orderStatus!),
                  );
                },
              ),
              SizedBox(
                height: 400,
                child: GridView.count(
                  crossAxisCount: 2,
                  children: order.products
                      .map(
                        (eachProductID) => Product.fromID(eachProductID),
                      )
                      .map(
                        (eachProduct) => eachProduct.text(),
                      )
                      .toList(),
                ),
              ),
              DropdownButtonFormField(
                items: productsRM()
                    .products
                    .map(
                      (e) => DropdownMenuItem(
                        child: e.name.text(),
                        value: e,
                      ),
                    )
                    .toList(),
                onChanged: (onChanged) {
                  order(
                    order..addProductToOrder(onChanged!.productID),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
