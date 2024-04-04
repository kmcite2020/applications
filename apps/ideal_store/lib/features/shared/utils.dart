import 'dart:math';

import '../../main.dart';

MaterialColor get randomGolor =>
    Colors.primaries[Random().nextInt(Colors.primaries.length)];

const customerIcon = Icon(Icons.people);

const emptyListInfoCustomer =
    'Currently there are no customers available in the list. Kindly try adding some customers using the corner emoji button.';

const emptyListInfoProduct =
    'Currently there are no products available in the list. Kindly try adding some products using the corner button.';

final imageRM = RM.injectFuture(
  () async {
    ByteData bytes = await rootBundle.load('lib/assets/icon.png');
    return base64Encode(bytes.buffer.asUint8List());
  },
);

Future<void> initializeDependencies() async {}
