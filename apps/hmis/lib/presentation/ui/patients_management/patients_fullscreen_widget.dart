import 'package:hmis/main.dart';
import 'package:hmis/presentation/ui/patients_management/patients_empty_widget.dart';

class PatientsFullscreenWidget extends UI {
  const PatientsFullscreenWidget({super.key});

  static final tabControllerRM = Simple(
    patientsBloc.patients.length == 0 ? 1 : patientsBloc.patients.length,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        // listenTo: tabControllerRM,
        builder: (_) => patientsBloc.patients.isEmpty
            ? PatientsEmptyWidget()
            : TabBarView(
                // controller: tabControllerRM.tabController,
                children: patientsBloc.patients
                    .map(
                      (e) => Scaffold(
                        appBar: customAppBar(
                          leading: LeadingBackButton(),
                          // title: e.bioData.names.patientFullName,
                          bottom: TabBar(
                            // controller: tabControllerRM.tabController,
                            indicatorSize: TabBarIndicatorSize.tab,
                            isScrollable: true,
                            tabs: patientsBloc.patients
                                .map(
                                  (eachPatient) => Tab(
                                    child: eachPatient.age.text(),
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                        body: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            e.id.text().pad(),
                            // e.age.text().pad(),
                            e.text().pad(),
                            Card(
                              child: e.name.text().pad(),
                            ),
                            Wrap(
                              children: [
                                IconButton.filledTonal(
                                  onPressed: () {
                                    RM.navigate.toDialog(
                                      AlertDialog(
                                        content: TextFormField(
                                          initialValue: e.name,
                                          onChanged: (value) {
                                            // patientsBloc.setNameForPatient(
                                            //   e.id,
                                            //   value,
                                            // );
                                          },
                                          onEditingComplete: RM.navigate.back,
                                        ),
                                      ),
                                    );
                                  },
                                  icon: Icon(Icons.near_me),
                                  // label: 'Update Age'.text(),
                                ).pad(),
                                IconButton.filledTonal(
                                  onPressed: () {},
                                  icon: Icon(Icons.ice_skating),
                                ).pad(),
                                // PopupMenuButton(
                                //   initialValue: e.age.years,
                                //   itemBuilder: (itemBuilder) => [
                                //     ...List.generate(
                                //       120,
                                //       (eachYear) => PopupMenuItem(
                                //         value: eachYear,
                                //         child: eachYear.text(),
                                //       ),
                                //     ),
                                //   ],
                                //   onSelected: (ageInYears) {
                                //     patientsBloc.setAgeForPatient(
                                //         e.id, ageInYears);
                                //   },
                                //   child:
                                //       CircleAvatar(child: e.age.years.text()),
                                // ).pad()
                              ],
                            ),
                            SingleChildScrollView(
                              child: Column(
                                children: [
                                  if (e.investigations.isEmpty)
                                    'No investigations'.text().pad(),
                                  Wrap(
                                    children: e.investigations.map(
                                      (eachInvestigationID) {
                                        return InputChip(
                                          label: (eachInvestigationID).text(),
                                          onDeleted: () {
                                            // patientsBloc
                                            //     .removeInvestigationForPatient(
                                            //   e.id,
                                            //   eachInvestigationID,
                                            // );
                                          },
                                        ).pad();
                                      },
                                    ).toList(),
                                  ),
                                  IconButton.filled(
                                    onPressed: () {},
                                    icon: PopupMenuButton(
                                      itemBuilder: (_) => [
                                        // ...defaultInvestigations.investigations
                                        //     .where(
                                        //   (eachInvestigation) {
                                        //     return !(e.investigations
                                        //         .contains(eachInvestigation));
                                        //   },
                                        // ).map(
                                        //   (eachInvestigation) {
                                        //     return PopupMenuItem(
                                        //       value: eachInvestigation,
                                        //       child:
                                        //           eachInvestigation.name.text(),
                                        //     );
                                        //   },
                                        // )
                                      ],
                                      onSelected: (value) {
                                        // patientsBloc.addInvestigationForPatient(
                                        //   e.id,
                                        //   value,
                                        // );
                                      },
                                    ),
                                  ),
                                  e.bills.text(textScaleFactor: 4.0).pad(),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
      ),
      floatingActionButton: floatingBar(),
    );
  }
}

ButtonBar floatingBar() {
  return ButtonBar(
    children: [
      FloatingActionButton(
        heroTag: randomID,
        onPressed: () async {
          final Patient? x = await RM.navigate.to(PatientAddingPage());
          if (x != null) {
            patientsBloc.addPatient(x);
            // RM.scaffold.showSnackBar(
            //   SnackBar(
            //     content: 'Added ${x.bioData.names.patientFullName}'.text(),
            //   ),
            // );
          } else {
            RM.scaffold.showSnackBar(
              SnackBar(
                content: 'Not added'.text(),
              ),
            );
          }
        },
        child: Icon(Icons.add_box),
      ),
      FloatingActionButton(
        heroTag: randomID,
        tooltip: 'CHANGE VIEW MODE',
        onPressed: () {
          patientsBloc.togglePageView();
        },
        child: FaIcon(
          FontAwesomeIcons.usersViewfinder,
        ),
      )
    ],
  );
}
