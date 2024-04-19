import 'package:ideal_store/features/shared/utils.dart';
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
              customersRM(Customer(city: ''));
            },
          ).pad(),
          SizedBox(width: 5),
        ],
      ),
      body: SafeArea(
        child: customersRM().isEmpty
            ? emptyListInfoCustomer.text(textScaleFactor: 2.3).pad()
            : ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: customersRM().length,
                itemBuilder: (_, i) {
                  return CustomerTile(
                    customerID: customersRM()[i].customerID,
                  );
                },
              ),
      ),
    );
  }
}
