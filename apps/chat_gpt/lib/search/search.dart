import 'package:chat_gpt/main.dart';

class SearchPage extends UI {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SearchBar(
            hintText: 'Search',
            leading: BackButton(),
            elevation: MaterialStatePropertyAll(1),
          ).pad(),
          const HistoryListView(),
        ],
      ),
    );
  }
}
