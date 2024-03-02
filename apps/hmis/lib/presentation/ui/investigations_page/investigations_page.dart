import 'package:hmis/main.dart';

class InvestigationsPage extends UI {
  InvestigationsPage({super.key});
  static const name = '/investigations';
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        leading: LeadingBackButton(),
        title: 'Investigations',
      ),
      // body: () {
      //   return ListView.builder(
      //     shrinkWrap: true,
      //     itemCount: defaultInvestigations.investigations.length,
      //     itemBuilder: (context, index) {
      //       final Investigation investigation = defaultInvestigations.investigations[index];
      //       return ListTile(
      //         title: investigation.name.text(16.sp),
      //         trailing: IconButton.outlined(
      //           onPressed: () {
      //             defaultInvestigations.removeInvestigation(investigation);
      //           },
      //           icon: investigation.price.text(),
      //         ),
      //       );
      //     },
      //   );
      // }(),
    );
  }
}
