import 'package:ideal_store/features/orders/order.dart';
import 'package:ideal_store/main.dart';

class ProductTile extends UI {
  const ProductTile({
    super.key,
    required this.productID,
    required this.size,
  });

  final String productID;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return ProductBuilder(
      id: productID,
      builder: (product) {
        Widget Read() => Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton.filledTonal(
                  tooltip: 'edit product',
                  onPressed: () {
                    productsRM(product.copyWith(editing: true));
                  },
                  icon: Icon(Icons.edit_document),
                ).pad(),
                IconButton.filledTonal(
                  tooltip: 'name',
                  onPressed: null,
                  icon: product.name.toUpperCase().text(),
                ).pad(),
                IconButton.filledTonal(
                  tooltip: 'brand',
                  onPressed: null,
                  icon: product.brand.description.toUpperCase().text(),
                ).pad(),
                IconButton.filled(
                  tooltip: 'color',
                  onPressed: null,
                  icon: product.materialColor.colorName.toUpperCase().text(),
                ).pad(),
                IconButton.filled(
                  tooltip: 'model',
                  onPressed: null,
                  icon: product.model.toUpperCase().text(),
                ).pad(),
                IconButton.filled(
                  tooltip: 'price',
                  onPressed: null,
                  icon: product.price.text(),
                ).pad(),
                IconButton.filled(
                  tooltip: 'delete product',
                  onPressed: () => productsRM.delete(productID),
                  icon: Icon(Icons.delete_forever),
                ).pad(),
                IconButton.filled(
                  tooltip: 'delete product',
                  onPressed: () {
                    final order = Order.create('');
                    ordersRM().setOrder(
                      order..addProductToOrder(productID),
                    );
                  },
                  icon: Icon(Icons.add_task_outlined),
                ).pad(),
                // product.name.text(textScaleFactor: 2).pad(),
                // product.brand.description.text(textScaleFactor: 2).pad(),
                // product.materialColor.colorName
                //     .text(textScaleFactor: 2)
                // .pad(),
                // product.model.text(textScaleFactor: 2).pad(),
                // product.price.floor().text(textScaleFactor: 2).pad(),
                // product.image == ''
                //     ? 'X'.text(textScaleFactor: 4).pad().center()
                //     : Image.memory(
                //         base64Decode(product.image),
                //         fit: BoxFit.fill,
                //       ).clipRadius().pad(),
              ],
            ).card();
        Widget Edit() => Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton.filledTonal(
                  tooltip: 'edit product',
                  onPressed: () {
                    productsRM(product.copyWith(editing: false));
                  },
                  icon: Icon(Icons.done),
                ).pad(),
                TextFormField(
                  initialValue: product.name,
                  decoration: InputDecoration(
                    labelText: 'Product Name',
                  ),
                  onChanged: (value) {
                    productsRM(
                      product.copyWith(name: value),
                    );
                  },
                ).pad(),
                DropdownButtonFormField(
                  value: product.brand,
                  decoration: InputDecoration(
                    labelText: 'Brand',
                  ),
                  items: Brand.values
                      .map(
                        (e) => DropdownMenuItem(
                          value: e,
                          child: e.description.text(),
                        ),
                      )
                      .toList(),
                  onChanged: (_) {
                    productsRM(product.copyWith(brand: _!));
                  },
                ).pad(),
                DropdownButtonFormField(
                  value: product.materialColor,
                  items: Colors.primaries
                      .map(
                        (e) => DropdownMenuItem(
                          value: e,
                          child: e.colorName.text(),
                        ),
                      )
                      .toList(),
                  onChanged: (_) {
                    productsRM(product.copyWith(materialColor: _!));
                  },
                  decoration: InputDecoration(
                    labelText: 'Material Color',
                  ),
                ).pad(),
                TextFormField(
                  initialValue: product.model,
                  onChanged: (value) {
                    productsRM(product.copyWith(model: value));
                  },
                  decoration: InputDecoration(labelText: 'Model'),
                ).pad(),
                TextFormField(
                  initialValue: product.price.floor().toString(),
                  onChanged: (nullablePrice) {
                    final price = int.tryParse(nullablePrice);
                    if (price == null) return;
                    productsRM(product.copyWith(price: price));
                  },
                  decoration: InputDecoration(labelText: 'Price'),
                ).pad(),
                SizedBox(
                  width: size.width,
                  height: size.width / 1.8,
                  child: ElevatedButton(
                    onPressed: () async {
                      final filePickerResult =
                          await FilePicker.platform.pickFiles(
                        withData: true,
                        allowedExtensions: ['jpg', 'png'],
                        type: FileType.custom,
                      );
                      if (filePickerResult == null) {
                        return;
                      }
                      final image = filePickerResult.files.first;
                      if (image.bytes == null) {
                        return;
                      }
                      productsRM(
                        product.copyWith(image: image.bytes!),
                      );
                    },
                    child: product.image == ''
                        ? 'Pick Image'.text()
                        : Image.memory(
                            (product.image),
                            fit: BoxFit.cover,
                          ),
                  ).pad(),
                ),
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(settingsRM().borderRadius),
                      child: LinearProgressIndicator(
                        minHeight: 40,
                        value: product.stock / 500,
                      ),
                    ),
                    Center(
                      child: "${product.stock}/500".text(
                        textScaleFactor: 2,
                        style: TextStyle(
                          color: settingsRM().materialColor.shade800,
                        ),
                      ),
                    )
                  ],
                ).pad(),
                Slider(
                  value: product.stock.toDouble(),
                  onChanged: (stock) {
                    productsRM(
                      product.copyWith(stock: stock.toInt()),
                    );
                  },
                  min: 0,
                  max: 500,
                )
              ],
            ).card();
        if (product.editing)
          return Edit();
        else
          return Read();
      },
    );
  }
}
