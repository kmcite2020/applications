import '../../main.dart';

String get randomID => Uuid().v8();

Map? toJsonAny<T>(dynamic type) => type?.toMap();

abstract class ToJson {
  Map? toMap();
}

// final directoryRM = RM.injectFuture(getApplicationDocumentsDirectory);
// Directory get directory => directoryRM.state;
