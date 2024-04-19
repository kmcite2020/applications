import 'package:chat_gpt/main.dart';

part 'chats.freezed.dart';
part 'chats.g.dart';

@freezed
class Chat with _$Chat {
  const factory Chat({
    @Default('') final String id,
    @Default('') final String title,
    @Default(<QueryResponseModel>[]) final List<QueryResponseModel> cards,
  }) = _Chat;

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);
}

final chatsRM = ComplexTable<Chat>('chats', fromJson: Chat.fromJson);
