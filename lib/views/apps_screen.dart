import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../utils.dart';

class AppsScreen extends ReactiveStatelessWidget {
  const AppsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("APPS"),
        actions: const [
          // AppSelectorToggle(),
        ],
      ),
      body: ListView(
        children: [
          // const Padding(
          //   padding: EdgeInsets.all(8.0),
          //   child: UserInformations(),
          // ),
          for (final app in availableApps)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  onTap: () {
                    // settingsNotifier.currentApp(app);
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => app.widget ?? const AppsScreen(),
                      ),
                    );
                    // context.goNamed(app.description);
                  },
                  leading: Icon(app.iconData),
                  title: Text(app.description),
                  subtitle: Text(app.name),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
