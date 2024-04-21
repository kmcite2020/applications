part of 'complex.dart';

class Simple<T> extends ComplexLegacy<T, T> {
  Simple(
    super.initialState, {
    super.serializer,
  }) {
    register<T>((event, _) => event);
  }
  T get state => getState();
  set state(T _state) => setState(_state);
}
