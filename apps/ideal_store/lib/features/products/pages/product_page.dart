import '../../../main.dart';
import '../file_picker.dart';

class ProductPage extends UI {
  static const path = '/product';
  final String productID;
  const ProductPage({required this.productID});
  @override
  Widget build(BuildContext context) {
    return ProductBuilder(
      productID: productID,
      builder: (product) {
        return Scaffold(
          body: ListView(
            children: [
              Container(
                padding: const EdgeInsets.all(4),
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const BackButton(),
                    Container(
                      decoration: BoxDecoration(
                        color: product.materialColor,
                        borderRadius: BorderRadius.circular(borderRadius),
                      ),
                      child: const Text("PRODUCT DETAILS").pad(),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: product.materialColor,
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
                child: product.productID.text().center().pad(),
              ).pad(),
              (product.editing
                      ? TextFormField(
                          initialValue: product.name,
                          onChanged: (name) {
                            productsRM()
                                .setProduct(product.copyWith(name: name));
                          },
                        )
                      : product.name.text(textScaleFactor: 3))
                  .pad(),
              (product.editing
                      ? TextFormField(
                          initialValue: product.model,
                          onChanged: (model) {
                            productsRM().setProduct(
                              product.copyWith(model: model),
                            );
                          },
                        )
                      : product.model.text(textScaleFactor: 2))
                  .pad(),
              (product.editing
                      ? DropdownButtonFormField(
                          value: product.brand,
                          items: Brand.values
                              .map(
                                (e) => DropdownMenuItem(
                                  child: e.description.text(),
                                  value: e,
                                ),
                              )
                              .toList(),
                          onChanged: (brand) {
                            productsRM()
                                .setProduct(product.copyWith(brand: brand!));
                          },
                        )
                      : product.brand.description.text())
                  .pad(),
              (product.editing
                      ? DropdownButtonFormField(
                          value: product.materialColor,
                          items: Colors.primaries
                              .map(
                                (e) => DropdownMenuItem(
                                  child: e.colorName.text(),
                                  value: e,
                                ),
                              )
                              .toList(),
                          onChanged: (materialColor) {
                            productsRM().setProduct(product.copyWith(
                                materialColor: materialColor!));
                          },
                        )
                      : product.materialColor.colorName.text())
                  .pad(),
              (product.editing
                      ? ElevatedButton(
                          onPressed: () async {
                            final image = await filePicker();
                            if (image == null) {
                              // navigator.scaffold.showSnackBar(
                              //   SnackBar(
                              //     content: 'Image not selected'
                              //         .text()
                              //         .pad()
                              //         .center(),
                              //     duration: 1.seconds,
                              //     padding: EdgeInsets.all(8),
                              //     behavior: SnackBarBehavior.floating,
                              //     margin: EdgeInsets.all(8),
                              //   ),
                              // );
                              return;
                            }
                            productsRM()
                                .setProduct(product.copyWith(image: image));
                          },
                          child: 'Pick Image'.text(),
                        )
                      : product.image == ''
                          ? 'Image not found.'.text()
                          : Card(
                              child: Image.memory(base64Decode(product.image))
                                  .pad(),
                            ))
                  .pad(),
              (product.editing
                      ? Slider(
                          min: 0,
                          max: 99999,
                          divisions: 99999,
                          value: product.price.toDouble(),
                          onChanged: (price) {
                            productsRM().setProduct(
                                product.copyWith(price: price.toInt()));
                          },
                          label: product.price.toStringAsFixed(0),
                        )
                      : product.price.text())
                  .pad(),
              (product.editing
                      ? Slider(
                          min: 0,
                          max: 500,
                          divisions: 500,
                          value: product.stock.toDouble(),
                          onChanged: (x) {
                            productsRM()
                                .setProduct(product.copyWith(stock: x.toInt()));
                          },
                        )
                      : product.stock.text())
                  .pad(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              productsRM()
                  .setProduct(product.copyWith(editing: !product.editing));
            },
            child: Icon(product.editing ? Icons.done : Icons.edit),
          ),
        );
      },
    );
  }
}
