// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:chat_gpt/chats/chats.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'package:chat_gpt/core/core.dart';

part 'home.g.dart';

class ChatPage extends ReactiveStatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    ChatModel? getChat(id) {
      try {
        return ChatsManager.to.id(chatManager.currentID);
      } catch (e) {
        return null;
      }
    }

    final ChatModel? discussionModel = getChat(chatManager.currentID);
    return Column(
      children: [
        Expanded(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemCount: discussionModel?.cards.length ?? 1,
              itemBuilder: (context, i) {
                final x = discussionModel?.cards[i];
                switch (x?.cardType) {
                  case CardType.query:
                    return QueryCard(qrModel: x!);
                  case CardType.response:
                    return ResponseCard(qrModel: x!);
                  case null:
                    return ListTile(
                      title: Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          'ChatGPT'.text(textScaleFactor: 3),
                        ],
                      ),
                      subtitle: Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Icon(
                            Icons.star_purple500,
                            size: 120,
                          ),
                        ],
                      ),
                    );
                }
              },
            ),
          ),
        ),
        const QueryInputBar(),
      ],
    );
  }
}

class QueryInputBar extends ReactiveStatelessWidget {
  static final queryController = RM.injectTextEditing();
  const QueryInputBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            controller: queryController.controller,
            focusNode: queryController.focusNode,
            decoration: InputDecoration(
              hintText: 'Message',
              suffixIcon: queryController.focusNode.hasFocus
                  ? IconButton(
                      onPressed: () {
                        chatManager.sendMessage(queryController.text);
                        queryController.controller.clear();
                      },
                      icon: Icon(Icons.arrow_upward),
                    )
                  : VoiceChatIcon(),
            ),
          ).pad(),
        ),
        const HeadphonesButton().pad(),
      ],
    );
  }
}

class VoiceChatIcon extends ReactiveStatelessWidget {
  const VoiceChatIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.voice_chat,
    );
  }
}

class ResponseCard extends ReactiveStatelessWidget {
  const ResponseCard({super.key, required this.qrModel});
  final QueryResponseModel qrModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      // GPT RESPONSE CARD
      child: Column(
        children: [
          const SizedBox(height: 8),
          const ResponseCardTopRow(),
          const Divider(),
          ListTile(
            title: qrModel.content.text(),
            subtitle: qrModel.dateTime.text(),
          ).pad(),
        ],
      ),
    );
  }
}

class ResponseCardTopRow extends ReactiveStatelessWidget {
  const ResponseCardTopRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.auto_mode_outlined).pad(),
        'ChatGPT'.text().pad(),
        const Icon(
          Icons.voice_chat,
        ).pad(),
      ],
    );
  }
}

class QueryCard extends ReactiveStatelessWidget {
  const QueryCard({super.key, required this.qrModel});
  final QueryResponseModel qrModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      // USER QUERY CARD
      child: Column(
        children: [
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.supervised_user_circle).pad(),
              'YOU'.text().pad(),
              const Icon(Icons.mic).pad(),
            ],
          ),
          const Divider(),
          ListTile(
            title: qrModel.content.text(),
            subtitle: qrModel.dateTime.text(),
          ).pad(),
        ],
      ),
    );
  }
}

class HeadphonesButton extends ReactiveStatelessWidget {
  const HeadphonesButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      onPressed: () {},
      icon: const Icon(Icons.headphones),
    );
  }
}

enum CardType { query, response }

@CopyWith()
@Embedded()
@JsonSerializable()
class QueryResponseModel {
  final CardType cardType;
  final String content;
  final DateTime dateTime;
  QueryResponseModel({
    required this.cardType,
    required this.content,
    required this.dateTime,
  });

  toJson() => _$QueryResponseModelToJson(this);
  factory QueryResponseModel.fromJson(json) =>
      _$QueryResponseModelFromJson(json);
}

@CopyWith()
@Collection()
@JsonSerializable()
class ChatModel {
  @Id()
  final String id;
  final String title;
  final List<QueryResponseModel> cards;
  ChatModel({
    this.cards = const [],
    required this.id,
    required this.title,
  });
  factory ChatModel.fromJson(json) => _$ChatModelFromJson(json);
  toJson(json) => _$ChatModelToJson(this);
}
