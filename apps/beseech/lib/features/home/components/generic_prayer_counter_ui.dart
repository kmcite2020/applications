import 'package:beseech/main.dart';

class GenericPrayerCounterUI extends UI {
  const GenericPrayerCounterUI({
    super.key,
    this.name = '',
    required this.value,
    this.increment,
    this.decrement,
  });
  final String name;
  final int value;
  final void Function()? increment;
  final void Function()? decrement;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        name
            .text(
              textScaleFactor: 1.5,
            )
            .pad()
            .container(
              // customBorderRadiusValue: borderRadius,
              spread: 60,
              depth: 120,
              // color: materialColor.shade400,
              // parentColor: materialColor.shade800,
            ),
        Row(
          children: [
            value.text(textScaleFactor: 2),
            const SizedBox(width: 20),
            Column(
              children: [
                IconButton(
                  onPressed: increment,
                  icon: const Icon(Icons.add, size: 30),
                ).pad().container(
                      parentColor: Colors.amber,
                      surfaceColor: Colors.amber,
                      spread: 60,
                      depth: 120,
                      // customBorderRadius: BorderRadius.only(
                      //   topRight: Radius.circular(
                      //     settingsBloc.settings.borderRadius,
                      //   ),
                      // ),
                    ),
                IconButton(
                  onPressed: decrement,
                  icon: const Icon(
                    Icons.remove,
                    size: 30,
                  ),
                ).pad().container(
                      parentColor: Colors.yellow,
                      surfaceColor: Colors.green,
                      spread: 30,
                      depth: 240,
                      // customBorderRadius: BorderRadius.only(
                      //   bottomRight: Radius.circular(
                      //     settingsBloc.settings.borderRadius,
                      //   ),
                      // ),
                    ),
              ],
            ),
          ],
        ),
      ],
    ).pad();
  }
}
