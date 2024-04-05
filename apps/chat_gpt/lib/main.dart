import 'main.dart';

export 'package:chat_gpt/chats/chats.dart';
export 'package:chat_gpt/core/core.dart';
export 'package:chat_gpt/chats/drawer.dart';
export 'package:chat_gpt/features/details/details.dart';
export 'package:manager/manager.dart';
export 'chat/chat_page.dart';
export 'settings/settings_manager.dart';
export 'settings/themes.dart';

void main() => runApp(ChatGPT());

final directoryRM = RM.injectFuture(getApplicationDocumentsDirectory);

Directory get directory => directoryRM.state;

class ChatGPT extends TopUI {
  @override
  final List<FutureOr<void>> dependencies = [
    directoryRM.initializeState(),
  ];
  @override
  Widget homePage(BuildContext context) {
    return SafeArea(child: CurrentChatScreen());
  }
}

class CurrentChatScreen extends UI {
  const CurrentChatScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              chatsRM.saveChat(
                ChatModel(
                  id: randomID,
                  title: 'title',
                  cards: [],
                ),
              );
            },
            icon: const Icon(Icons.edit_square),
          ).pad(),
          const MenuButtonForCurrentChat(),
        ],
        title: GestureDetector(
          onDoubleTap: () {
            navigator.toDialog(
              Dialog(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      onSubmitted: (x) {
                        chatManager.setTitle(x);
                        navigator.back();
                      },
                    ).pad()
                  ],
                ),
              ),
            );
          },
          child:
              "${chatManager.currentID == '' ? 'ChatGPT $version' : '${chatManager.chatModel.title}'}"
                  .text(),
        ),
      ),
      drawer: const LeftChatsPage(),
      body: const ChatPage(),
    );
  }
}

class MenuButtonForCurrentChat extends UI {
  const MenuButtonForCurrentChat({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (x) => [
        PopupMenuItem(
          child: 'View Details'.text(),
          onTap: () {
            navigator.to(DetailsPage());
          },
        ),
        PopupMenuItem(
          child: 'Share'.text(),
          enabled: chatManager.currentID != '',
        ),
        PopupMenuItem(
          onTap: () {
            navigator.toDialog(
              Dialog(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      onSubmitted: (x) {
                        chatManager.setTitle(x);
                        navigator.back();
                      },
                    ).pad()
                  ],
                ),
              ),
            );
          },
          child: 'Rename'.text(),
          enabled: chatManager.currentID != '',
        ),
        PopupMenuItem(
          child: 'Delete'.text(),
          onTap: () {
            chatManager.deleteChat();
          },
          enabled: chatManager.currentID != '',
        ),
      ],
    ).pad();
  }
}
