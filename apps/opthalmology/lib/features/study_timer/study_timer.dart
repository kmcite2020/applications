import 'package:opthalmology/main.dart';

import 'sessions.dart';

class StudyTimerPage extends UI {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "StudyTimer".text(),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 72, 0, 255),
                  Color.fromARGB(255, 255, 39, 158),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 100.0),
                child: Center(child: TimerText()),
              ),
              switch (session.sessionStatus) {
                SessionStatus.isInitial => FloatingActionButton(
                    child: const Icon(Icons.play_arrow),
                    onPressed: start,
                  ),
                SessionStatus.isPaused => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FloatingActionButton(
                        child: const Icon(Icons.play_arrow),
                        onPressed: resume,
                      ),
                      FloatingActionButton(
                        child: const Icon(Icons.replay),
                        onPressed: reset,
                      ),
                    ],
                  ),
                SessionStatus.isRunning => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FloatingActionButton(
                        child: const Icon(Icons.pause),
                        onPressed: pause,
                      ),
                      FloatingActionButton(
                        child: const Icon(Icons.replay),
                        onPressed: reset,
                      ),
                    ],
                  ),
                SessionStatus.isCompleted => FloatingActionButton(
                    child: const Icon(Icons.replay),
                    onPressed: reset,
                  ),
                _ => FloatingActionButton(
                    child: const Icon(Icons.play_arrow),
                    onPressed: start,
                  ),
              },
              Container(
                height: 300,
                child: ListView.builder(
                  itemCount: sessionsRM().length,
                  itemBuilder: (context, index) {
                    final eachSession = sessionsRM()[index];
                    return ListTile(
                      title: eachSession.duration.text(),
                      subtitle: eachSession.startedOn.date().text(),
                      trailing: IconButton(
                        onPressed: () {
                          sessionsRM.delete(eachSession.id);
                        },
                        icon: Icon(Icons.delete_forever),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
