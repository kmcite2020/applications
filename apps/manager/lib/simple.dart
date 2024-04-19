import 'package:manager/manager.dart';

class Simple<T> extends Complex<T, T> {
  Simple(
    super.initialState, {
    super.serializer,
  }) : super(
          setup: (setup) {
            setup<T>((value, _) => value);
          },
        );
}
