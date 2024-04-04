import '../../../main.dart';

class TimeOfPresentationUI extends UI {
  const TimeOfPresentationUI({
    super.key,
    required this.timeOfPresentation,
  });
  final DateTime timeOfPresentation;
  @override
  Widget build(BuildContext context) {
    return timeOfPresentation.text();
  }
}
