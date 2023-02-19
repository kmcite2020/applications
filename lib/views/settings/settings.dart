// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, annotate_overrides, file_names

import 'package:flutter/material.dart';

import '../widgets/app_selector.dart';

class SettingsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        actions: [
          AppSelectorToggle(),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          buildAbout(),
          Text('Support'),
          Text('Licenses'),
          buildFeedbackTile(context),
          buildHelp(),
        ],
      ),
    );
  }
}

Widget buildFeedbackTile(BuildContext context) {
  return ListTile(
    title: Text('FEEDBACK'),
    subtitle: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('other features will be added. soon'),
      ],
    ),
  );
}

Widget buildHelp() => ListTile(
      title: Text('HELP'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('other features will be added. soon'),
        ],
      ),
    );

Widget buildAbout() => ListTile(
      title: Text('ABOUT US'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('checkout my github page.'),
        ],
      ),
    );
