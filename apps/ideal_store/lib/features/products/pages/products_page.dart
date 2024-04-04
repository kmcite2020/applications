import 'package:ideal_store/main.dart';

import '../../shared/utils.dart';

class ProductsPage extends UI {
  static const path = '/products';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('PRODUCTS'),
        actions: [
          IconButton(
            tooltip: 'Add Product',
            onPressed: () {
              productsRM().setProduct(Product().copyWith());
            },
            icon: Icon(
              Icons.add_shopping_cart,
            ),
          ).pad(),
          IconButton(
            tooltip: 'Back to Dashboard',
            onPressed: () => RM.navigate.to(DashboardPage()),
            icon: Icon(
              Icons.arrow_back,
            ),
          ).pad(
            customPad: EdgeInsets.only(right: settingsRM().padding),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              if (productsRM().products.isEmpty)
                emptyListInfoProduct
                    .text(
                      textScaleFactor: 2,
                    )
                    .pad(),
              ...productsRM().products.map(
                    (eachProduct) => ProductTile(
                      productID: eachProduct.productID,
                      size: size,
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
