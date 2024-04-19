import '../../../main.dart';

class CustomerPage extends UI {
  static const path = '/customer';
  final String customerID;
  const CustomerPage({
    required this.customerID,
  });
  @override
  Widget build(BuildContext context) {
    return CustomerBuilder(
      custmerID: customerID,
      builder: (customer) => Scaffold(
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackButton(),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("CUSTOMER DETAILS"),
                  ),
                ],
              ),
            ),
            'ID'.text().pad(),
            (customer.customerID).text().pad(),
            'NAME'.text().pad(),
            (customer.name).text(textScaleFactor: 2).pad(),
            'CITY'.text().pad(),
            (customer.city).text(textScaleFactor: 2).pad(),
            'PRODUCTS'.text().pad(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: customer.products
                  .map(
                    (e) =>
                        productsRM.get(e).name.text(textScaleFactor: 2).pad(),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
