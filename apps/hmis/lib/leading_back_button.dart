import 'package:manager/manager.dart';

class LeadingBackButton extends UI {
  const LeadingBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const BackButton().pad();
  }
}
