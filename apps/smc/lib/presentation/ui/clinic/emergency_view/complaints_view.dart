import 'package:smc/main.dart';

class ComplaintsView extends UI {
  const ComplaintsView({
    Key? key,
    required this.patient,
  }) : super(key: key);
  final Patient patient;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: patient.presentingComplaints.map(
            (Complaint e) {
              return Row(
                children: [
                  Column(
                    children: [
                      e.complaint.text().pad(),
                      e.history.text().pad(),
                    ],
                  ),
                  e.duration.text()
                  // DurationView(duration: e.duration),
                ],
              );
            },
          ).toList(),
        ),
        ElevatedButton(
          onPressed: () {
            router.toDialog(
              Dialog(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: patient.presentingComplaints.map(
                    (Complaint e) {
                      return Row(
                        children: [
                          Column(
                            children: [
                              e.complaint.text().pad(),
                              e.history.text().pad(),
                            ],
                          ),
                          e.duration.text()
                          // DurationView(duration: e.duration),
                        ],
                      );
                    },
                  ).toList(),
                ),
              ),
            );
          },
          child: "EDIT COMPLAINTS".text(),
        ),
        const TextField().pad(),
      ],
    );
  }
}
