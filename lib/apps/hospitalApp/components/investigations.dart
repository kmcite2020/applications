// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import '../core/core.dart';

class Investigations extends StatefulWidget {
  const Investigations({super.key});

  @override
  State<Investigations> createState() => _InvestigationsState();
}

class _InvestigationsState extends State<Investigations> {
  bool isImportant = true;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(8),
        scrollDirection: Axis.horizontal,
        child: Row(
          //alignment: WrapAlignment.center,
          children: [
            !isImportant
                ? SizedBox()
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Checkbox(
                          value: hb,
                          onChanged: (v) {
                            setState(() {
                              hb = v!;
                            });
                          }),
                      Text('Hb'),
                    ],
                  ),
            !isImportant
                ? SizedBox()
                : Row(
                    //nn
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Checkbox(
                          value: sgpt,
                          onChanged: (v) {
                            setState(() {
                              sgpt = v!;
                            });
                          }),
                      Text('SGPT'),
                    ],
                  ),
            !isImportant
                ? SizedBox()
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Checkbox(
                          value: creatinine,
                          onChanged: (v) {
                            setState(() {
                              creatinine = v!;
                            });
                          }),
                      Text('Creatinine'),
                    ],
                  ),
            !isImportant
                ? SizedBox()
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Checkbox(
                          value: ecg,
                          onChanged: (v) {
                            setState(() {
                              ecg = v!;
                            });
                          }),
                      Text('ECG'),
                    ],
                  ),
            !isImportant
                ? SizedBox()
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Checkbox(
                          value: rbs,
                          onChanged: (v) {
                            setState(() {
                              rbs = v!;
                            });
                          }),
                      Text('RBS'),
                    ],
                  ),
            !isImportant
                ? SizedBox()
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Checkbox(
                          value: mp,
                          onChanged: (v) {
                            setState(() {
                              mp = v!;
                            });
                          }),
                      Text('MP'),
                    ],
                  ),
            !isImportant
                ? SizedBox()
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Checkbox(
                          value: dengue,
                          onChanged: (v) {
                            setState(() {
                              dengue = v!;
                            });
                          }),
                      Text('Dengue NS-1'),
                    ],
                  ),
            !isImportant
                ? SizedBox()
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Checkbox(
                          value: usAbdomenPelvis,
                          onChanged: (v) {
                            setState(() {
                              usAbdomenPelvis = v!;
                            });
                          }),
                      Text('US'),
                    ],
                  ),
            !isImportant
                ? SizedBox()
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Checkbox(
                          value: ctBrain,
                          onChanged: (v) {
                            setState(() {
                              ctBrain = v!;
                            });
                          }),
                      Text('CT Brain'),
                    ],
                  ),
            !isImportant
                ? SizedBox()
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Checkbox(
                          value: sodium,
                          onChanged: (v) {
                            setState(() {
                              sodium = v!;
                            });
                          }),
                      Text('Na'),
                    ],
                  ),
            !isImportant
                ? SizedBox()
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Checkbox(
                          value: potassium,
                          onChanged: (v) {
                            setState(() {
                              potassium = v!;
                            });
                          }),
                      Text('K'),
                    ],
                  ),
            !isImportant
                ? SizedBox()
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Checkbox(
                          value: chloride,
                          onChanged: (v) {
                            setState(() {
                              chloride = v!;
                            });
                          }),
                      Text('Cl'),
                    ],
                  ),
            !isImportant
                ? SizedBox()
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Checkbox(
                          value: calcium,
                          onChanged: (v) {
                            setState(() {
                              calcium = v!;
                            });
                          }),
                      Text('Ca'),
                    ],
                  ),
            !isImportant
                ? SizedBox()
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Checkbox(
                          value: cxr,
                          onChanged: (v) {
                            setState(() {
                              cxr = v!;
                            });
                          }),
                      Text('CXR'),
                    ],
                  ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  child: Row(
                    children: [
                      Icon(isImportant ? Icons.arrow_upward : Icons.arrow_downward),
                      Text(isImportant ? 'HIDE' : 'SHOW'),
                    ],
                  ),
                  onPressed: () => setState(() => isImportant = !isImportant),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

bool hb = false;
bool sgpt = false;
bool creatinine = false;
bool ecg = false;
bool rbs = false;
bool mp = false;
bool dengue = false;
bool usAbdomenPelvis = false;
bool ctBrain = false;
bool sodium = false;
bool potassium = false;
bool chloride = false;
bool calcium = false;
bool cxr = false;

bool amylase = false;
bool tft = false;

Map investigationsMap = {
  'id': Uuid().v1(),
  'Hb': hb,
  'SGPT': sgpt,
  'Creatinine': creatinine,
  'ECG': ecg,
  'RBS': rbs,
  'MP': mp,
  'Dengue NS-1': dengue,
  'Sodium': sodium,
  'Potassium': potassium,
  'Chloride': chloride,
  'Calcium': calcium,
  'CXR': cxr
};
