import 'package:derma_handbook/features/diseases/disease.dart';
import 'package:derma_handbook/main.dart';
import '../../settings/settings.dart';
import '../components/disease_tile.dart';

class DiseasesPage extends ReactiveStatelessWidget {
  const DiseasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Diseases'
            .text(textScaleFactor: settingsManager.settings.headlineTextSize),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: diseasesRM().length,
        itemBuilder: (context, index) => diseaseTile(diseasesRM()[index].id),
      ),
    );
  }
}
