import 'package:chat_gpt/chats/current_chat_rm.dart';

import 'main.dart';

export 'package:chat_gpt/chats/chats.dart';
export 'package:chat_gpt/chats/left_chats_page.dart';
export 'package:chat_gpt/details.dart';
export 'package:manager/manager.dart';
export 'chat/chat_page.dart';
export 'settings/settings_manager.dart';
export 'settings/themes.dart';

void main() => runApp(ChatGPT());

final directoryRM = RM.injectFuture(getApplicationDocumentsDirectory);

Directory get directory => directoryRM.state;

class ChatGPT extends TopUI {
  @override
  ThemeMode get themeMode => themeModeRM();
  @override
  ThemeData get theme => ThemeData(
        brightness: Brightness.light,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      );
  ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      );

  @override
  Widget? splashScreen() => CircularProgressIndicator().center();

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
              chatsRM.save(
                Chat(
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
                      onSubmitted: (title) {
                        currentChatRM.changeTitle(title);
                        navigator.back();
                      },
                    ).pad()
                  ],
                ),
              ),
            );
          },
          child:
              "${currentChatRM()?.id == '' ? 'ChatGPT $version' : '${currentChatRM()?.title}'}"
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
          enabled: currentChatRM()?.id != '',
        ),
        PopupMenuItem(
          onTap: () {
            navigator.toDialog(
              Dialog(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      onSubmitted: (title) {
                        currentChatRM.changeTitle(title);
                        navigator.back();
                      },
                    ).pad()
                  ],
                ),
              ),
            );
          },
          child: 'Rename'.text(),
          enabled: currentChatRM()?.id != '',
        ),
        PopupMenuItem(
          child: 'Delete'.text(),
          onTap: currentChatRM.delete,
          enabled: currentChatRM()?.id != '',
        ),
      ],
    ).pad();
  }
}

String get version => '0.1';
String get userName => 'Adnan Farooq';
