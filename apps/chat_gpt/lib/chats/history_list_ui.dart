import 'package:chat_gpt/chats/current_chat_rm.dart';
import 'package:chat_gpt/main.dart';

class HistoryListUI extends UI {
  const HistoryListUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: chatsRM().length,
        itemBuilder: (context, index) {
          final chat = chatsRM()[index];
          return ListTile(
            onTap: () {
              currentChatRM.loadChat(chat);
              navigator.back();
            },
            selected: currentChatRM()?.id == chat.id,
            title: chat.title.text(),
          );
        },
        separatorBuilder: (c, i) => Divider(height: i.ceilToDouble()),
      ),
    );
  }
}
