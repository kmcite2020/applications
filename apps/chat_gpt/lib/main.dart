import 'dart:io';

import 'package:chat_gpt/chats/chats.dart';
import 'package:chat_gpt/features/details/details.dart';
import 'package:chat_gpt/settings/themes.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'chat/chat_page.dart';
import 'core/core.dart';
import 'chats/drawer.dart';
import 'search/search.dart';
import 'settings/settings.dart';
import 'settings/settings_manager.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

final directoryRM = RM.injectFuture(getApplicationDocumentsDirectory);
final isarRM = RM.inject(
  () => Isar.open(
    schemas: [
      ChatModelSchema,
    ],
    directory: directory.path,
  ),
);

Directory get directory => directoryRM.state;
Isar get isar => isarRM.state;

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await directoryRM.initializeState();
  await isarRM.initializeState();
  runApp(const ChatGPT());
}

final navigator = RM.navigate;
final scaffold = RM.scaffold;

class ChatGPT extends ReactiveStatelessWidget {
  const ChatGPT({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        navigatorKey: navigator.navigatorKey,
        routes: {
          '/': (_) => const CurrentChatScreen(),
          'Settings': (_) => const SettingsPage(),
          'Search': (_) => const SearchPage(),
        },
        debugShowCheckedModeBanner: false,
        theme: Themes.theme(),
        darkTheme: Themes.darkTheme(),
        themeMode: themeModeRM().data(),
      ),
    );
  }
}

class CurrentChatScreen extends ReactiveStatelessWidget {
  const CurrentChatScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              ChatsManager.to.createNewChatModel(
                ChatModel(id: randomID, title: 'title'),
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

class MenuButtonForCurrentChat extends ReactiveStatelessWidget {
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
