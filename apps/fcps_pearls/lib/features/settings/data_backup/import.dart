
// part 'import.freezed.dart';
// part 'import.g.dart';

// final backupRM = BackupRM();

// class BackupRM {

//   BackupRM() : super(BackupState()) {
//     on<_BackupEventExport>(_backupEventExport);
//     on<_BackupEventImport>(_backupEventImport);
//     on<_BackupEventLoading>(_backupEventLoading);
//   }

//   FutureOr<void> _backupEventExport(
//       _BackupEventExport event, Setstate<BackupState> emit) async {
//     add(BackupEvent.loading());
//     File file = File(Directory.current.path + '\\backup.json');
//     file.createSync();
//     file.writeAsStringSync(event.state);
//     await Future.delayed(Duration(seconds: 1));
//     print(file);
//     emit(
//       call().copyWith(loading: false),
//     );
//   }

//   FutureOr<void> _backupEventImport(
//       _BackupEventImport event, Setstate<BackupState> emit) {}
//   FutureOr<void> _backupEventLoading(
//       _BackupEventLoading event, Setstate<BackupState> emit) {
//     emit(
//       call().copyWith(loading: true),
//     );
//   }
// }

// @freezed
// class BackupEvent with _$BackupEvent {
//   const factory BackupEvent() = _BackupEvent;
//   const factory BackupEvent.importFromFile(String file) = _BackupEventImport;
//   const factory BackupEvent.exportToFile(String state) = _BackupEventExport;
//   const factory BackupEvent.loading() = _BackupEventLoading;

//   factory BackupEvent.fromJson(Map<String, dynamic> json) =>
//       _$BackupEventFromJson(json);
// }

// @freezed
// class BackupState with _$BackupState {
//   const factory BackupState({
//     @Default(false) final bool loading,
//     @Default(Pearls()) final Pearls pearls,
//   }) = _BackupState;

//   factory BackupState.fromJson(Map<String, dynamic> json) =>
//       _$BackupStateFromJson(json);
// }
