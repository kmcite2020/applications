import 'package:opthalmology/main.dart';
part 'flash_groups.freezed.dart';
part 'flash_groups.g.dart';

@freezed
class FlashGroup with _$FlashGroup {
  const factory FlashGroup({
    @Default('') final String id,
    @Default('') final String name,
    @Default(0) final int colorIndex,
  }) = _FlashGroup;
  const FlashGroup._();
  MaterialColor get color => Colors.primaries[colorIndex];

  factory FlashGroup.fromJson(Map<String, dynamic> json) =>
      _$FlashGroupFromJson(json);
}

Map<String, FlashGroup> flashGroups([Map<String, FlashGroup>? _flashGroups]) {
  if (_flashGroups != null)
    appState(appState().copyWith(flashGroups: _flashGroups));
  return appState().flashGroups;
}

final saveFlashGroup = (FlashGroup folder) {
  flashGroups(Map.of(flashGroups())..[folder.id] = folder);
};
final deleteFlashGroup = (FlashGroup folder) {
  flashGroups(Map.of(flashGroups())..remove(folder.id));
};

extension IndexOnColor on MaterialColor {
  int get index => Colors.primaries.indexOf(this);
}

class FlashGroupsRM extends Complex<FlashGroupsEvent, Map<String, FlashGroup>> {
  FlashGroupsRM() {
    register<_FlashGroupsEventDelete>(
      (event) => flashGroups(
        Map.of(flashGroups())..remove(event.group.id),
      ),
    );
    register<_FlashGroupsEventUpdate>(
      (event) => flashGroups(
        Map.of(flashGroups())..[event.group.id] = event.group,
      ),
    );
  }
  @override
  Map<String, FlashGroup> get initialState => flashGroups();
}

@freezed
class FlashGroupsEvent with _$FlashGroupsEvent {
  const factory FlashGroupsEvent.update(FlashGroup group) =
      _FlashGroupsEventUpdate;
  const factory FlashGroupsEvent.delete(FlashGroup group) =
      _FlashGroupsEventDelete;
}
