import 'package:chat_gpt/main.dart';

final currentChatRM = CurrentChatRM();

class CurrentChatRM extends Manager<Chat?> {
  final bool autoDispose = false;
  @override
  final initialState = chatsRM().firstOrNull;
  void loadChat(Chat newChat) {
    state = newChat;
  }

  void createQuery(QueryResponseModel model) {}
  void createResponse(QueryResponseModel model) {}

  void delete() => chatsRM.delete(state!.id);

  void changeTitle(String title) {
    chatsRM(state?.copyWith(title: title));
  }
}
