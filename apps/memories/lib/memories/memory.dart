import 'package:manager/manager.dart';
part 'memory.freezed.dart';
part 'memory.g.dart';

@freezed
class Memory with _$Memory {
  const factory Memory({
    @Default('') final String id,
    @Default('') final String name,
    @Default('') final String description,
    @Default('') final String path,
    @Default(false) final bool isHidden,
  }) = _Memory;

  factory Memory.fromJson(json) => _$MemoryFromJson(json);
}

final memoriesRM = ComplexTable<Memory>(
  'memories',
  fromJson: Memory.fromJson,
);
