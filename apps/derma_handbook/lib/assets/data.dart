import 'package:derma_handbook/main.dart';
import 'package:flutter/services.dart';

import '../features/diseases/disease.dart';

Future<List<Disease>> initial() async {
  List<Disease> cachedDiseases = [];
  for (final eachFile in _diseasesNames) {
    final now = DateTime.now();
    final disease = Disease(
      id: randomID,
      image: await _getImage('$_dir/$eachFile.png'),
      name: eachFile,
      createdAt: now,
    );
    cachedDiseases.add(disease);
  }
  return cachedDiseases;
}

const _diseasesNames = [
  'acne vulgaris',
  'actinic keratosis',
  'allergic contact dermatitis',
  'atopic dermatitis',
  'alopecia areata',
  'bacterial infections',
  'bruises',
  'cellulitis',
  'corn and callus',
  'erythrasma',
  'genital candidiasis',
  'hair fall',
  'herpes labialis',
  'herpes zoster',
  'hirsutism',
  'hydradenitis supparativa',
  'hypertrophic scar',
  'intertigo',
  'keloid scar',
  'leprosy',
  'melasma',
  'nappy rash',
  'onychomycosis',
  'oral candidiasis',
  'penile warts',
  'pompholyx',
  'psoriasis',
  'rosacea',
  'scabies',
  'seborrheic dermatitis',
  'sunburn',
  'tinea capitis',
  'tinea corporis',
  'tinea cruris',
  'tinea manuum',
  'tinea pedis',
  'tinea versicolor',
  'vitiligo',
  'warts',
];

const _dir = 'lib/assets/data';
Future<Uint8List> _getImage(String assetName) async {
  return (await rootBundle.load(assetName)).buffer.asUint8List();
}
