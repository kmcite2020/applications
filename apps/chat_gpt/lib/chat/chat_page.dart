import 'package:chat_gpt/chats/current_chat_rm.dart';
import 'package:manager/manager.dart';

part 'chat_page.freezed.dart';
part 'chat_page.g.dart';

class ChatPage extends UI {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemCount: currentChatRM()?.cards.length ?? 1,
              itemBuilder: (context, i) {
                final x = currentChatRM()?.cards[i];
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

class QueryInputBar extends UI {
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
                        currentChatRM(
                          CurrentChatEvent.createQuery(
                            QueryResponseModel(
                              cardType: CardType.query,
                              content: queryController.text,
                              dateTime: DateTime.now(),
                            ),
                          ),
                        );
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

class VoiceChatIcon extends UI {
  const VoiceChatIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.voice_chat,
    );
  }
}

class ResponseCard extends UI {
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

class ResponseCardTopRow extends UI {
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

class QueryCard extends UI {
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

class HeadphonesButton extends UI {
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

@freezed
class QueryResponseModel with _$QueryResponseModel {
  const factory QueryResponseModel({
    required final CardType cardType,
    required final String content,
    required final DateTime dateTime,
  }) = _QueryResponseModel;

  factory QueryResponseModel.fromJson(Map<String, dynamic> json) =>
      _$QueryResponseModelFromJson(json);
}
