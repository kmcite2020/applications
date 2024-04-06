import 'package:chat_gpt/main.dart';

import '../chats/history_list_ui.dart';

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
          const HistoryListUI(),
        ],
      ),
    );
  }
}
