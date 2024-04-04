import 'package:rebuilder_docs/features/backup/backup.dart';
import 'package:rebuilder_docs/main.dart';

class BackupPage extends UI {
  const BackupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Backup your Data'.text(),
      ),
      body: ListView(
        children: [
          backupRM
              .build(
                (state) => state.text(),
              )
              .pad(),
          "Let's Backup your data".text(textScaleFactor: 2).pad(),
          "We'll back up your info in the cloud and automatically keep it up to date. Have peace of mind knowing it's always protected, even if something happens to this PC"
              .text()
              .pad(),
          ListTile(
            title: 'Settings'.text(),
            subtitle: 'Settings are backed up successfully'.text(),
          ),
          ListTile(
            title: 'Topics'.text(),
            subtitle: 'Topics are backed up successfully'.text(),
          ),
          ListTile(
            title: 'Last Backed up on'.text(),
            subtitle: 'At 10:34 AM on 24th of February 2024.'.text(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'backup',
        onPressed: () {},
        child: Icon(Icons.backup),
      ),
    );
  }
}
