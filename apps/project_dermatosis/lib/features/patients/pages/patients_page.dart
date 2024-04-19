import 'package:project_dermatosis/features/core/shared.dart';
import 'package:project_dermatosis/features/patients/patient.dart';
import 'package:project_dermatosis/main.dart';

import '../../pictures/pictures.dart';

class PatientsPage extends ReactiveStatelessWidget {
  const PatientsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: const LeadingBackButton(),
        title: const Text('DERMATOMA'),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: patientsRM().length,
        itemBuilder: (context, index) {
          final eachPatient = patientsRM()[index];
          return Card(
            child: ListTile(
              title: Column(
                children: [
                  Row(
                    children: [
                      eachPatient.name.text(),
                    ],
                  ),
                  '${eachPatient.address}'.text(),
                  Text('age:  ${eachPatient.age.formatDuration}'),
                  Wrap(
                    children: [
                      Text('contact: ${eachPatient.contact}'),
                    ],
                  ),
                  GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    physics: const BouncingScrollPhysics(),
                    itemCount: eachPatient.pictures.length,
                    itemBuilder: (context, index) {
                      final eachPicture = eachPatient.pictures.toList()[index];
                      return Column(
                        children: [
                          GestureDetector(
                            onDoubleTap: () {
                              // RM.navigate.to(
                              //   ShowImageWidget(
                              //     pictureModel: e,
                              //   ),
                              // );
                            },
                            child: Hero(
                              tag: randomID,
                              child: Image.memory(
                                eachPicture.image!,
                                height: 100,
                                width: 100,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          // e.date!.year.text,
                        ],
                      );
                    },
                    shrinkWrap: true,
                  ),
                  // if (e.medicalRecord != null) e.medicalRecord!.date.text,
                ],
              ),
              subtitle: const Column(),
              onTap: () {
                // router.to(
                //   PatientPage.name,
                //   arguments: eachPatient.id,
                // );
              },
            ),
          );
        },
      ),
      floatingActionButton: ButtonBar(
        children: [
          FloatingActionButton(
            heroTag: randomID,
            onPressed: () {
              // final PatientModel patientModel = PatientModel()
              //   ..dateOfBirth = DateTime(1995);
              // patientsBloc.setPatient(patientModel);
              patientsRM(
                Patient(
                  dateOfBirth: DateTime.now(),
                ),
              );
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            heroTag: randomID,
            onPressed: () {},
            child: const Icon(Icons.view_array),
          ),
        ],
      ),
    );
  }
}

class ShowImageWidget extends UI {
  const ShowImageWidget({super.key, required this.pictureModel});

  final Imagery pictureModel;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
              // title: Text(
              //   pictureModel.date!.format(),
              //   textScaleFactor: .7,
              // ),
              ),
          body: ClipRRect(
            // borderRadius: BorderRadius.circular(settingsBloc.borderRadius),
            child: GestureDetector(
              onDoubleTap: () {
                // RM.navigate.back();
              },
              child: Image.memory(
                pictureModel.image!,
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
                  if (wasSynchronouslyLoaded) return child;
                  return AnimatedSwitcher(
                    duration: const Duration(milliseconds: 0),
                    child: () {
                      if (frame != null) {
                        return child;
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(
                            strokeWidth: 6,
                          ),
                        );
                      }
                    }(),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

enum SortType {
  byName,
  byAddress,
  byDate,
}

const sortTypes = SortType.values;

// final sortTypeFormField = RM.injectFormField(SortType.byName);
