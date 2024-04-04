import 'package:beseech/main.dart';

class PaddingUI extends UI {
  const PaddingUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        'Padding'.text().pad(),
        // Slider(
        //   value: settingsBloc.settings.padding,
        //   onChanged: settingsBloc.setPadding,
        // ).pad(),
      ],
    ).card();
  }
}
