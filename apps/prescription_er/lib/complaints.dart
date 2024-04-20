import 'package:prescription_er/main.dart';
import 'package:prescription_er/prescriptions/patients_rm.dart';

import 'patient_builder.dart';
import 'prescriptions/prescription.dart';

class PresentingComplaintsUI extends UI {
  const PresentingComplaintsUI({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return PatientBuilder(
      id: id,
      builder: (patient) {
        final complaints = patient.presentingComplaints;
        void setComplaints(PresentingComplaints complaints) => patientsRM(
              patient.copyWith(presentingComplaints: complaints),
            );

        void addComplaint(Complaint complaint) {
          setComplaints(
            complaints.copyWith(
              cache: Map.of(complaints.cache)..[complaint.id] = complaint,
            ),
          );
        }

        void removeComplaint(Complaint complaint) {
          setComplaints(
            complaints.copyWith(
              cache: Map.of(complaints.cache)..remove(complaint.id),
            ),
          );
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            "Complaints".text().pad(),
            ListView.builder(
              shrinkWrap: true,
              itemCount: patient.presentingComplaints.cache.values.length,
              itemBuilder: (context, index) {
                final complaint =
                    patient.presentingComplaints.cache.values.toList()[index];
                return ListTile(
                  title: complaint.complaint.text(),
                  subtitle: complaint.history.text(),
                  trailing: IconButton.filled(
                    onPressed: () {
                      removeComplaint(complaint);
                    },
                    icon: Icon(Icons.delete_forever),
                  ),
                );
              },
            ),
            ElevatedButton(
              onPressed: () async {
                final complaint = await RM.navigate.toDialog<Complaint>(
                  ComplaintDialogUI(),
                );
                if (complaint != null) {
                  addComplaint(complaint);
                }
              },
              child: 'Add Complaint'.text(),
            ).pad(),
          ],
        );
      },
    );
  }
}

final complaintRM = RM.inject(() => Complaint(id: randomID));

void setComplaint(Complaint complaint) => complaintRM.state = complaint;

Complaint get complaint => complaintRM.state;

class ComplaintDialogUI extends UI {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: 'Complaint'),
            initialValue: complaintRM.state.complaint,
            onChanged: (value) => setComplaint(
              complaint.copyWith(complaint: value),
            ),
          ).pad(),
          TextFormField(
            decoration: InputDecoration(labelText: 'Brief History'),
            initialValue: complaintRM.state.history,
            onChanged: (value) => setComplaint(
              complaint.copyWith(history: value),
            ),
            maxLines: 4,
          ).pad(),
          ElevatedButton(
            onPressed: () {
              RM.navigate.back(complaint);
            },
            child: 'Save'.text(),
          )
        ],
      ).pad(),
    );
  }
}
