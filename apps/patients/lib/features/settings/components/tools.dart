import '../../../main.dart';

class ToolsUI extends UI {
  const ToolsUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton.filledTonal(
          tooltip: 'Complaints Manager',
          onPressed: () {
            // navigator.to(const ComplaintsPage());
          },
          icon: const Icon(
            Icons.comment,
          ),
        ).pad(),
        IconButton.filledTonal(
          tooltip: 'Complaints Manager',
          onPressed: () {
            // navigator.to(const ComplaintsPage());
          },
          icon: const Icon(
            Icons.macro_off,
          ),
        ).pad()
      ],
    ).pad().borderizeGradiently();
  }
}
