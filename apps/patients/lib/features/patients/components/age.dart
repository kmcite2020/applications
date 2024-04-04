import '../../../main.dart';

class AgeUI extends UI {
  const AgeUI({super.key, required this.age});
  final Age age;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        age.value.text(textScaleFactor: 2),
        age.ageUnit.name.text(),
      ],
    ).borderizeGradiently();
  }
}
