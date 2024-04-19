import 'package:ideal_store/main.dart';

class CustomerTile extends UI {
  const CustomerTile({
    super.key,
    required this.customerID,
  });
  final String customerID;
  @override
  Widget build(BuildContext context) {
    return CustomerBuilder(
      custmerID: customerID,
      builder: (customer) {
        Widget Read() {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              IconButton.filledTonal(
                onPressed: () {
                  customersRM(customer.copyWith(editing: true));
                },
                icon: Icon(Icons.edit_document),
              ).pad(),
              IconButton.filledTonal(
                icon: const Icon(Icons.delete_forever),
                onPressed: () {
                  customersRM.delete(customerID);
                },
              ).pad(),
              IconButton.filled(
                icon: customer.name.toUpperCase().text(),
                onPressed: () =>
                    RM.navigate.to(CustomerPage(customerID: customerID)),
              ).pad(),
              IconButton.filled(
                icon: customer.city.toUpperCase().text(),
                onPressed: null,
              ).pad(),
            ],
          ).card();
        }

        Widget Edit() {
          final possibleProducts = productsRM().where(
            (element) => !customer.products.contains(element.productID),
          );
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              IconButton.filledTonal(
                onPressed: () {
                  customersRM(customer.copyWith(editing: false));
                },
                icon: Icon(Icons.edit),
              ).pad(),
              TextFormField(
                initialValue: customer.name,
                onChanged: (value) {
                  customersRM(customer.copyWith(name: value));
                },
                decoration: InputDecoration(labelText: 'NAME'),
              ).pad(),
              DropdownButtonFormField(
                value: customer.city,
                items: cities
                    .map(
                      (eachCity) => DropdownMenuItem(
                        value: eachCity,
                        child: eachCity.toUpperCase().text(),
                      ),
                    )
                    .toList(),
                onChanged: (city) {
                  customersRM(customer.copyWith(city: city!));
                },
                decoration: InputDecoration(labelText: 'CITY'),
              ).pad(),
              Wrap(
                children: [
                  Icon(Icons.production_quantity_limits),
                  SizedBox(width: 5),
                  'Products'.text(),
                ],
              ).pad(),
              Wrap(
                children: customer.products
                    .map(
                      (eachProductID) => productsRM.get(eachProductID),
                    )
                    .map(
                      (eachProduct) => SizedBox(
                        child: ActionChip.elevated(
                          onPressed: () {
                            customersRM(
                              customer.copyWith(
                                products: List.of(customer.products)
                                  ..remove(eachProduct.productID),
                              ),
                            );
                          },
                          label: eachProduct.name.text(),
                        ).pad(),
                      ),
                    )
                    .toList(),
              ),
              SubmenuButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(settingsRM().borderRadius),
                )),
                menuChildren: possibleProducts
                    .map(
                      (eachProduct) => MenuItemButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            settingsRM().borderRadius,
                          ),
                        )),
                        onPressed: () {
                          customersRM(
                            customer.copyWith(
                              products: List.of(customer.products)
                                ..add(
                                  eachProduct.productID,
                                ),
                            ),
                          );
                        },
                        child: eachProduct.name.text(),
                      ),
                    )
                    .toList(),
                child: Row(
                  children: [
                    Icon(Icons.store).pad(
                      custom: EdgeInsets.symmetric(
                        horizontal: settingsRM().padding,
                      ),
                    ),
                    possibleProducts.isEmpty
                        ? 'No products available to add'.text().pad()
                        : 'Products Available'.text().pad(),
                  ],
                ),
              ),
              // PopupMenuButton<Product>(
              //   initialValue: products.firstOrNull,
              //   icon: Icon(Icons.store),
              //   enabled: possibleProducts.isNotEmpty,
              //   itemBuilder: (x) {
              //     return possibleProducts
              //         .map(
              //           (e) => PopupMenuItem<Product>(
              //             value: e,
              //             child: e.name.text(),
              //           ),
              //         )
              //         .toList();
              //   },
              //   onSelected: (product) {
              //     setCustomer(
              //       customer.copyWith(
              //         products: List.of(customer.products)
              //           ..add(
              //             product.productID,
              //           ),
              //       ),
              //     );
              //   },
              // ).pad(),
              CircleAvatar(child: customer.products.length.text()).pad()
            ],
          ).card();
        }

        if (customer.editing)
          return Edit();
        else
          return Read();
      },
    );
  }
}
