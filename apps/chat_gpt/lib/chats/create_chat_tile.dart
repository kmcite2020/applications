import 'package:chat_gpt/main.dart';

import 'current_chat_rm.dart';

class CreateChatTile extends UI {
  const CreateChatTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.edit_square),
      onTap: () {
        final newChat = Chat(
          id: randomID,
          title: 'title',
          cards: [],
        );
        chatsRM(newChat);
        currentChatRM(CurrentChatEvent.load(newChat));
        navigator.back();
      },
      title: 'New Chat'.text(),
    );
  }
}
