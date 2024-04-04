// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:chat_gpt/core/core.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../chat/chat_page.dart';
import '../main.dart';
import 'chats.dart';

class LeftChatsPage extends ReactiveStatelessWidget {
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
              onTap: () {
                Navigator.of(context).pushNamed('Search');
              },
              title: 'Search'.text().pad(),
            ),
            const Divider(height: 0),
            const NewChatAddTile(),
            const Divider(height: 0),
            const HistoryListView(),
            const Divider(height: 0),
            const UserSettingsTile()
          ],
        ),
      ),
    );
  }
}

class HistoryListView extends ReactiveStatelessWidget {
  const HistoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: ChatsManager.to.listOfChats.length,
        itemBuilder: (context, index) {
          final chat = ChatsManager.to.listOfChats[index];
          return ListTile(
            onTap: () {
              chatManager.loadChat(chat.id);
              navigator.back();
            },
            selected: chatManager.currentID == chat.id,
            title: chat.title.text(),
          );
        },
        separatorBuilder: (c, i) => Divider(height: 0),
      ),
    );
  }
}

class NewChatAddTile extends ReactiveStatelessWidget {
  const NewChatAddTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.edit_square),
      onTap: () {
        ChatsManager.to.createNewChatModel(
          ChatModel(id: randomID, title: 'title'),
        );
        navigator.back();
      },
      title: 'New Chat'.text(),
    );
  }
}

class UserSettingsTile extends ReactiveStatelessWidget {
  const UserSettingsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).pushNamed('Settings');
      },
      leading: const CircleAvatar(
        child: Icon(
          Icons.supervised_user_circle,
        ),
      ),
      title: userName.text(),
      subtitle: 'tap to open settings'.text(),
      trailing: CircleAvatar(
        child: const Icon(
          Icons.settings,
        ),
      ),
    );
  }
}
