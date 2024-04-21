import 'package:manager/manager.dart';
import 'package:roster_system/departments/departments.dart';

import '../../doctors/doctors.dart';
import '../../main.dart';
part 'department_page.freezed.dart';
part 'department_page.g.dart';

class DepartmentPage extends UI {
  const DepartmentPage({
    super.key,
    required this.id,
  });
  final String id;

  @override
  Widget build(BuildContext context) {
    return DepartmentBuilder(
      id: id,
      builder: (department) {
        return Scaffold(
          appBar: AppBar(
            title: department.name.text(),
          ),
          body: DutyRosterWidget(department),
        );
      },
    );
  }

  List<TableRow> get days => Day.values
      .map(
        (eachDay) => TableRow(
          children: [
            Container(
              margin: EdgeInsets.all(2),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(8),
              ),
              child: '${eachDay.name.toUpperCase()}'.text().pad(),
            ),
            ...shifts(eachDay),
          ],
        ),
      )
      .toList();

  List<Widget> shifts(Day day) => Shift.values
      .map(
        (eachShift) => Container(
          margin: EdgeInsets.all(2),
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(8),
          ),
          child: '${day.name.toUpperCase()} ${eachShift.name}'.text().pad(),
        ),
      )
      .toList();
}

// final dayShiftsRM = ComplexMap<DayShift, String>(
//   creator: () {
//     Map<DayShift, String> _temp = Map();
//     for (final day in Day.values) {
//       for (final shift in Shift.values) {
//         _temp[DayShift(day, shift)] = 'empty';
//       }
//     }
//     return _temp;
//   },
//   serializer: (
//     name: 'dayShifts',
//     key: DayShift.fromJson,
//     value: Stringify.fromJson,
//   ),
// );

@freezed
class DayShift with _$DayShift {
  const factory DayShift(
    final Day day,
    final Shift shift,
  ) = _DayShift;
  factory DayShift.fromJson(Map<String, dynamic> json) =>
      _$DayShiftFromJson(json);
}

class DutyRosterWidget extends UI {
  final Department department;
  DutyRosterWidget(this.department);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final eachColumn = width / 4;
    return Column(
      children: [
        TextFormField(
          initialValue: department.name,
          onChanged: (value) {
            departmentsRM(department.copyWith(name: value));
          },
        ).pad(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SingleChildScrollView(
            child: Table(
              columnWidths: {
                0: FixedColumnWidth(eachColumn),
                1: FixedColumnWidth(eachColumn),
                2: FixedColumnWidth(eachColumn),
                3: FixedColumnWidth(eachColumn),
              },
              // defaultColumnWidth: FixedColumnWidth(120.0),
              border: TableBorder.all(),
              children: [
                _buildHeaderRow(),
                ..._buildRows(),
              ],
            ),
          ),
        ).pad(),
      ],
    );
  }

  TableRow _buildHeaderRow() {
    final List<Widget> cells = [
      Container(
        child: 'Day/Shift'.text().pad(),
      ),
      ...Shift.values.map((shift) => _buildCell(shift.name))
    ];
    return TableRow(children: cells);
  }

  List<TableRow> _buildRows() {
    return Day.values.map((day) {
      final List<Widget> cells = [
        _buildCell(day.name),
        ...Shift.values.map((shift) => _buildDoctorCell(day, shift))
      ];
      return TableRow(children: cells);
    }).toList();
  }

  Widget _buildDoctorCell(Day day, Shift shift) {
    final Doctor? doctor = _getDoctor(day, shift);
    final doctorName = doctor != null ? doctor.name : '-';
    return _buildCell(doctorName);
  }

  Widget _buildCell(String text) {
    return TableCell(
      child: Container(
        padding: EdgeInsets.all(8.0),
        alignment: Alignment.center,
        child: Text(
          text,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Doctor? _getDoctor(Day day, Shift shift) {
    return null;
  }
}

enum Day { mon, tue, wed, thu, fri, sat, sun }

enum Shift { M, E, N }
