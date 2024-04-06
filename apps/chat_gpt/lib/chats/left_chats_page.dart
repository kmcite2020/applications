import 'package:chat_gpt/search/search_page.dart';

import '../main.dart';
import 'create_chat_tile.dart';
import 'history_list_ui.dart';
import 'user_settings_tile.dart';

class LeftChatsPage extends UI {
  const LeftChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.search).pad(),
              onTap: () => navigator.to(SearchPage()),
              title: 'Search'.text().pad(),
            ),
            const Divider(height: 0),
            const CreateChatTile(),
            const Divider(height: 0),
            const HistoryListUI(),
            const Divider(height: 0),
            const UserSettingsTile()
          ],
        ),
      ),
    );
  }
}
