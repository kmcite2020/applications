import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

Future<T?> alertDialog<T>({
  required String title,
}) {
  return RM.navigate.toDialog<T>(
    AlertDialog(
      title: Text(title),
      actions: [
        TextButton(
          onPressed: () => RM.navigate.back(),
          child: const Text('No'),
        ),
        TextButton(
          onPressed: () => RM.navigate.forceBack(),
          child: const Text('Yes'),
        ),
      ],
    ),
    postponeToNextFrame: true,
  );
}
