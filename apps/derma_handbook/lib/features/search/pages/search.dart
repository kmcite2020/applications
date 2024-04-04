import 'package:derma_handbook/main.dart';
import '../../core/constants.dart';
import '../../settings/settings.dart';
import '../components/search_bar.dart';
import '../components/searched_diseases_list.dart';

class SearchPage extends UI {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: appTitle.text(
            textScaleFactor: settingsManager.settings.headlineTextSize),
        actions: [],
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: const [
          SearchBarWidget(),
          SearchedDiseasesList(),
        ],
      ),
    );
  }
}
