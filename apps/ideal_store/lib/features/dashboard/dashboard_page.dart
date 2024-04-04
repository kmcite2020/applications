import '../../main.dart';

class DashboardPage extends UI {
  static const path = '/dashboard';
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => RM.navigate.to(SettingsPage()),
            icon: Icon(Icons.settings),
          ),
          SizedBox(width: 5)
        ],
        title: 'Dashboard'.text(),
      ),
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          children: [
            ListTile(
              title: 'PRODUCTS'.text(textScaleFactor: 2),
              trailing: IconButton(
                tooltip: 'Go to Products Screen',
                onPressed: () => RM.navigate.to(ProductsPage()),
                icon: const Icon(Icons.store),
              ),
            ).pad(),
            ListTile(
              title: 'CUSTOMERS'.text(textScaleFactor: 2),
              trailing: IconButton(
                tooltip: 'Go to Customer Screen',
                onPressed: () {
                  RM.navigate.to(CustomersPage());
                },
                icon: const Icon(Icons.people),
              ),
            ).pad(),
            ListTile(
              title: 'ORDERS'.text(textScaleFactor: 2),
              trailing: IconButton(
                tooltip: 'Go to Orders Screen',
                onPressed: () => RM.navigate.to(OrdersPage()),
                icon: const Icon(
                  Icons.storm,
                ),
              ),
            ).pad(),
            ListTile(
              title: 'TOTAL PRODUCTS AVAILABLE'.text(),
              // trailing: productsController.products.length.text(),
            ).pad(),
            ListTile(
              title: 'TOTAL CUSTOMERS AVAILABLE'.text(),
              // trailing: customersController.customers.length.text(),
            ).pad(),
            ListTile(
              title: Text(
                'TOTAL PRODUCTS SOLD',
              ),
              trailing: Text('20'),
              subtitle: Text('PRODUCTS SOLD A LOT'),
            ).pad(),
            ListTile(
              trailing: Text('25'),
              title: Text(
                'TOTAL CUSTOMERS SERVED',
              ),
              subtitle: Text('NO CUSTOMER SATISFIED'),
            ).pad(),
            ListTile(
              title: 'Current Worth'.text(textScaleFactor: 2),
              // subtitle: Text(
              //   productsController.currentWorth,
              //   textScaleFactor: 4,
              // ),
            ).pad(),
          ],
        ),
      ),
    );
  }
}
