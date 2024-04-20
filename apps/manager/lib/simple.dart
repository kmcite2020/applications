import 'package:manager/manager.dart';

class Simple<T> extends Complex<T, T> {
  Simple(
    super.initialState, {
    super.serializer,
  }) {
    register<T>((event, _) => event);
  }
}
