import 'package:opthalmology/main.dart';

// part 'study_timer.g.dart';
// part 'study_timer.freezed.dart';

final timerLIVE = RM.injectAnimation(
  duration: 1.seconds,
  shouldAutoStart: true,
);

final startedRM = DateTime.now().inj();

// final lengthOfSessionRM = RM.injectStream(
//   () => Stream.periodic(
//     17.milliseconds,
//     (_) {
//       return DateTime.now().difference(startedRM.state);
//     },
//   ),
// );

late Timer timer;

class StudyTimerPage extends UI {
  @override
  void didMountWidget(BuildContext context) {
    timer = Timer.periodic(
      1.seconds,
      (timer) {
        timerLIVE.refresh();
      },
    );
    super.didMountWidget(context);
  }

  @override
  void didUnmountWidget() {
    timer.cancel();
    timerLIVE.dispose();
    super.didUnmountWidget();
  }

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
              timer.tick.text(),
              timerLIVE.snapState.text(),
              // ElevatedButton(
              //   onPressed: onPause,
              //   child: 'Pause'.text(textScaleFactor: 2),
              // ).pad(),
              // ElevatedButton(
              //   onPressed: onSave,
              //   child: 'Save'.text(textScaleFactor: 2),
              // ).pad(),
            ],
          ),
          // currentDuration.text(),
          '00:00:00'.text(textScaleFactor: 4),
          Spacer(),
          'Your Records'.text(textScaleFactor: 4),

          ElevatedButton(
            onPressed: () {},
            child: 'add'.text(),
          ),
        ],
      ),
    );
  }

  void onStart() {}

  void onPause() {}

  void onCancel() {}
}
