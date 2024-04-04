import '../../../main.dart';

class TableCellBuilder extends UI {
  const TableCellBuilder({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TableCell(
      verticalAlignment: TableCellVerticalAlignment.middle,
      child: child.pad(),
    );
  }
}
