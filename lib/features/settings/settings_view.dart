import 'package:flutter/material.dart';

import '../../commons/extensions.dart';
import 'personalizations/background/widgets/backtainer_view.dart';
import 'personalizations/personalizations_view.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BackTainer(
        child: ListView(
          children: [
            const BackButton().pad,
            "Settings".textScale6.pad,
            const PersonalizationView(),
          ],
        ),
      ),
    );
  }
}
