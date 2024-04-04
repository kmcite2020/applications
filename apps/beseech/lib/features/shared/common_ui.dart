// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'shared.dart';

class LeadingBackButton extends UI {
  const LeadingBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const BackButton().pad();
  }
}
