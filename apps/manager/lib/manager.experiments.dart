part of 'manager.dart';

extension InjectedExtensions<T> on Injected<T> {
  T ask([T? _state]) => _state != null ? state = _state : state;
}

final remiRosselletRM = RM.inject(() => 0);

abstract class FileStorageForType<T> {
  FutureOr<Directory> get directory;
  String get appName;
  T call([T? _data]) => _data != null ? _store(_data) : _load();
  FutureOr<File> _file() async {
    final dir = await directory;
    return File('${dir.path}/$appName.json');
  }

  late File file;
  _store(T data) async {
    file = await _file();
    file.writeAsString(
      JsonEncoder((data) => data.toJson()).convert(data),
    );
  }

  Future<T> _load() async {
    file = await _file();
    final data = await file.readAsString();
    final json = JsonDecoder().convert(data);
    return json;
  }
}

/// PREVIOUS STATE REMEMBER
abstract class ComplexMemory<T> extends Base<T> {
  @override
  T get initialState;
  late T previousState = initialState;
}

/// UNDO-REDO SUPPORT
abstract class ComplexHistory<H> extends Base<H> {}
