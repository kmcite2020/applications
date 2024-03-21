import '../../main.dart';
part 'studies.freezed.dart';
part 'studies.g.dart';

@freezed
class Study with _$Study {
  const factory Study({
    @Default('') final String id,
    required final DateTime started,
    required final DateTime ended,
    @Default('') final String description,
  }) = _Study;

  factory Study.fromJson(Map<String, dynamic> json) => _$StudyFromJson(json);
}

Map<String, Study> studies([Map<String, Study>? _studies]) {
  if (_studies != null) appState(appState().copyWith(studies: _studies));
  return appState().studies;
}

final saveStudy = (Study folder) {
  studies(Map.of(studies())..[folder.id] = folder);
};
final deleteStudy = (Study folder) {
  studies(Map.of(studies())..remove(folder.id));
};
