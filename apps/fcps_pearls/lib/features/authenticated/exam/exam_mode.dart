import 'package:manager/manager.dart';

import '../../../main.dart';
import '../authenticated.dart';

part 'exam_mode.freezed.dart';
part 'exam_mode.g.dart';

class ExamModePage extends UI {
  const ExamModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            authenticatedPageRM(AuthenticatedPage.home);
          },
          icon: Icon(Icons.home),
        ),
        title: Text('EXAM MODE'),
      ),
      body: Column(
        children: [
          'How do u want your exam to be'.text().pad(),
          'length of questions\n time'.text(),
        ],
      ),
    );
  }
}

@freezed
class Exam with _$Exam {
  const factory Exam({
    @Default([]) final List<Pearl> pearls,
    @Default('') final String title,
  }) = _Exam;

  factory Exam.fromJson(Map<String, dynamic> json) => _$ExamFromJson(json);
}
