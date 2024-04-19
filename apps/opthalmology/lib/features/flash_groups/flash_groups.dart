import 'package:opthalmology/main.dart';
part 'flash_groups.freezed.dart';
part 'flash_groups.g.dart';

final flashGroupsRM = ComplexTable<FlashGroup>(
  'flashGroups',
  fromJson: FlashGroup.fromJson,
);

@freezed
class FlashGroup with _$FlashGroup {
  const factory FlashGroup({
    @Default('') final String id,
    @Default('') final String name,
    @MaterialColorConverter() @Default(Colors.blue) final MaterialColor color,
  }) = _FlashGroup;
  const FlashGroup._();

  factory FlashGroup.fromJson(Map<String, dynamic> json) =>
      _$FlashGroupFromJson(json);
}

@freezed
class FlashGroupsEvent with _$FlashGroupsEvent {
  const factory FlashGroupsEvent.update(FlashGroup group) =
      _FlashGroupsEventUpdate;
  const factory FlashGroupsEvent.delete(FlashGroup group) =
      _FlashGroupsEventDelete;
}
