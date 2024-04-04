import 'package:chat_gpt/main.dart';

part 'chats.freezed.dart';
part 'chats.g.dart';

final chatsRM = ChatsRM();

class ChatsRM extends Manager<Chats> {
  final initialState = Chats();

  void saveChat(ChatModel chatModel) {
    state = state.copyWith(
      chats: Map.of(state.chats)..[chatModel.id] = chatModel,
    );
  }

  void deleteChat(ChatModel chatModel) {
    state = state.copyWith(
      chats: Map.of(state.chats)..remove(chatModel.id),
    );
  }

  ChatModel? chatByID(String key) => state.chats[key];
}

final CurrentChatManager chatManager = CurrentChatManager();

class CurrentChatManager {
  final ccmRM = RM.inject(() => '');
  String get currentID => ccmRM.state;
  ChatModel get chatModel => chatsRM.chatByID(currentID)!;
  void loadChat(String _) => ccmRM.state = _;

  void sendMessage(String text) {
    late ChatModel chat;
    if (currentID == '') {
      final chat = ChatModel(
        id: randomID,
        title: 'NewChat',
        cards: [],
      );
      loadChat(chat.id);
    } else {
      chat = chatsRM.chatByID(currentID)!;
    }
    final card = QueryResponseModel(
      cardType: CardType.query,
      content: text,
      dateTime: DateTime.now(),
    );
    final cards = chat.cards;
    chat = chat.copyWith(
      cards: [...cards, card],
    );
    // chatsRepository.addChat(chat);
  }

  void deleteChat() {
    // chatsRepository.removeChat(ChatsRM.to.id(currentID));
    loadChat('');
  }

  void setTitle(String title) {
    // chatsRepository.addChat(chatModel.copyWith(title: title));
  }
}

@freezed
class Chats with _$Chats {
  const factory Chats({
    @Default(<String, ChatModel>{}) final Map<String, ChatModel> chats,
  }) = _Chats;

  factory Chats.fromJson(Map<String, dynamic> json) => _$ChatsFromJson(json);
}
