import 'package:ideal_store/main.dart';

class CustomersPage extends UI {
  static const path = '/customers';
  const CustomersPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: 'CUSTOMERS'.text(),
        actions: [
          BackButton(),
          IconButton(
            tooltip: 'add customer',
            icon: const Icon(Icons.add_reaction),
            onPressed: () {
              setCustomer(Customer());
            },
          ).pad(),
          SizedBox(width: 5),
        ],
      ),
      body: SafeArea(
        child: customers.isEmpty
            ? emptyListInfoCustomer.text(textScaleFactor: 2.3).pad()
            : ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: customers.length,
                itemBuilder: (_, i) {
                  return CustomerTile(customerID: customers[i].customerID);
                },
              ),
      ),
    );
  }
}
