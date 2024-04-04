// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'package:derma_handbook/features/diseases/disease.dart';
import 'package:derma_handbook/features/diseases/diseases_providers.dart';

class DiseaseBuilder extends ReactiveStatelessWidget {
  const DiseaseBuilder({
    required this.id,
    required this.builder,
  });

  final int id;

  final Widget Function(BuildContext context, Disease disease) builder;
  @override
  Widget build(BuildContext context) {
    final disease = diseases.firstWhere(
      (eachDisease) => eachDisease.id == id,
    );
    return builder(context, disease);
  }
}
