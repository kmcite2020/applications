import 'package:opthalmology/main.dart';

part 'study_timer.g.dart';
part 'study_timer.freezed.dart';

StudyTime get studyTime => studyTimeRM.state;
final studyTimeRM = RM.inject(
  () => StudyTime(),
);

final dateTimeRM = RM.inject(() => DateTime.now());

void setDateTime([DateTime? dateTime]) {
  dateTimeRM.state = dateTime ?? DateTime.now();
}

void update(StudyTime studyTime) => studyTimeRM.state = studyTime;

final onStart = () {
  setDateTime();
  update(
    studyTime.copyWith(duration: Duration.zero),
  );
};

Duration get currentDuration => currentStreamRM.state;

final currentStreamRM = RM.injectStream(
  () async* {
    while (true) {
      yield DateTime.now().difference(
          dateTimeRM.state); // Emitting the current duration in seconds
      await Future.delayed(
          Duration(seconds: 1)); // Wait for 1 second before emitting again
    }
  },
);

final onCancel = () {};
final onPause = () {};
final onSave = () {};

class StudyTimerPage extends UI {
  const StudyTimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              ElevatedButton(
                onPressed: onStart,
                child: 'Start'.text(textScaleFactor: 2),
              ).pad(),
              ElevatedButton(
                onPressed: onCancel,
                child: 'Cancel'.text(textScaleFactor: 2),
              ).pad(),
              ElevatedButton(
                onPressed: onPause,
                child: 'Pause'.text(textScaleFactor: 2),
              ).pad(),
              ElevatedButton(
                onPressed: onSave,
                child: 'Save'.text(textScaleFactor: 2),
              ).pad(),
            ],
          ),
          currentDuration.text(),
          '00:00:00'.text(textScaleFactor: 4),
          Spacer(),
          'Your Records'.text(textScaleFactor: 4),
          recordsRM.onAll(
            onWaiting: () => CircularProgressIndicator(),
            onError: (_, __) => CircularProgressIndicator(),
            onData: (data) => Column(
              children: data
                  .map(
                    (e) => e.text(),
                  )
                  .toList(),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              recordsRepo.add(
                Record()..id = randomID,
              );
            },
            child: 'add'.text(),
          ),
        ],
      ),
    );
  }
}

class RecordLogic {
  // ignore: unused_field
  late final StreamSubscription<int> _streamSubscription;
  final Stream<int> _stream = Stream.periodic(
    1.seconds,
    (count) => count,
  );
  RecordLogic() {
    _streamSubscription = _stream.listen(
      (second) {
        print(second);
      },
    );
  }

  final studyTimerRM = RM.injectStream(
    () => Stream.periodic(
      1.seconds,
      (_) => _,
    ),
  );
  late final recordRM = RM.inject<Record>(
    () {
      return Record();
    },
    dependsOn: DependsOn(
      {
        studyTimerRM,
      },
    ),
  );
}

final recordsRM = RM.injectStream(
  recordsRepo.watch,
);

final RecordsRepo recordsRepo = RecordsRepo();

@freezed
class StudyTime with _$StudyTime {
  const factory StudyTime({
    @Default(Duration.zero) final Duration duration,
  }) = _StudyTime;

  factory StudyTime.fromJson(Map<String, dynamic> json) =>
      _$StudyTimeFromJson(json);
}

@collection
class Record {
  @Id()
  late String id;
  DateTime start = DateTime.now();
  DateTime end = DateTime.now();
  @override
  String toString() => '$start -> $end';
}

class RecordsRepo {
  Stream<List<Record>> watch() =>
      isar.records.where().watch(fireImmediately: true);
  void add(Record record) => isar.write(
        (isar) => isar.records.put(
          record,
        ),
      );
}

Isar get isar => isarRM.state;

final isarRM = RM.injectFuture(isarOpener);

final isarOpener = () async => Isar.open(
      schemas: [
        RecordSchema,
        FolderSchema,
        FlashCardSchema,
      ],
      directory: await getDirectory(),
    );

final getDirectory = () => getApplicationDocumentsDirectory().then(
      (value) => value.path,
    );
