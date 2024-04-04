import 'package:chat_gpt/core/core.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class DetailsPage extends ReactiveStatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'DETAILS'.text(),
      ),
      body: Center(
        child: Placeholder(
          child: 'To be implemented'.text(),
        ),
      ),
    );
  }
}
