import 'dart:math';

import 'package:chat_gpt/core/core.dart';
import 'package:chat_gpt/main.dart';
import 'package:isar/isar.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../chat/chat_page.dart';

class ChatsRepository {
  Stream<List<ChatModel>> watchChats() {
    return isar.chatModels.where().watch(fireImmediately: true);
  }

  List<ChatModel> get chats => isar.chatModels.where().findAll();
  void addChat(ChatModel chatModel) => isar.write(
        (isar) => isar.chatModels.put(chatModel),
      );
  void removeChat(ChatModel chatModel) =>
      isar.write((isar) => isar.chatModels.delete(chatModel.id));
}

final chatsRepository = ChatsRepository();

class ChatsManager {
  static final to = ChatsManager();

  late final chatsRM = RM.injectStream(
    () => chatsRepository.watchChats().map(
          (event) => ChatsHistory(
            chats: {for (final v in event) v.id: v},
          ),
        ),
    initialState: ChatsHistory(),
  );

  ChatsHistory get chats => chatsRM.state;
  // set chats(ChatsHistory _) => chatsRM.state = _;

  Map<String, ChatModel> get mapOfChats => chats.chats;
  // set mapOfChats(Map<int, ChatModel> _) => chats = ChatsHistory(chats: _);

  List<ChatModel> get listOfChats => mapOfChats.values.toList();

  void createNewChatModel(ChatModel discussionModel) async {
    final i = Random().nextInt(999999);
    chatsRepository.addChat(discussionModel.copyWith(title: 'Required $i'));
    await Future.delayed(20.milliseconds);
    chatManager.loadChat(discussionModel.id);
  }

  void removeChat(ChatModel chatModel) {}

  ChatModel id(String id) =>
      listOfChats.firstWhere((element) => element.id == id);
}

final CurrentChatManager chatManager = CurrentChatManager();

class CurrentChatManager {
  final ccmRM = RM.inject(() => '');
  String get currentID => ccmRM.state;
  ChatModel get chatModel => ChatsManager.to.id(currentID);
  void loadChat(String _) => ccmRM.state = _;

  void sendMessage(String text) {
    late ChatModel chat;
    if (currentID == '') {
      final chat = ChatModel(id: randomID, title: 'NewChat');
      loadChat(chat.id);
    } else {
      chat = ChatsManager.to.id(currentID);
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
    chatsRepository.addChat(chat);
  }

  void deleteChat() {
    chatsRepository.removeChat(ChatsManager.to.id(currentID));
    loadChat('');
  }

  void setTitle(String title) {
    chatsRepository.addChat(chatModel.copyWith(title: title));
  }
}

class ChatsHistory {
  final Map<String, ChatModel> chats;
  ChatsHistory({
    this.chats = const {},
  });
}
