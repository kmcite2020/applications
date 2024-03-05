import 'package:smc/main.dart';

class AdminPage extends UI {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Administration Office'.text(),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: 'Complaints'.text(),
          ).pad(),
          ElevatedButton(
            onPressed: () {},
            child: 'All Staffs'.text(),
          ).pad(),
          ...staffBloc.staffs.map((e) => e.text().pad()),
          ElevatedButton(
            onPressed: () {},
            child: 'Duty Management'.text(),
          ).pad(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'hospital info',
        heroTag: randomID,
        onPressed: () {
          router.toDialog(
            const HospitalInformationDialog(),
            barrierColor: Colors.black87,
          );
        },
        child: const Icon(Icons.local_hospital),
      ),
    );
  }
}
