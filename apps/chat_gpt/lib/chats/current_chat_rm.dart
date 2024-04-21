import 'package:chat_gpt/main.dart';

part 'current_chat_rm.freezed.dart';

final currentChatRM = ComplexLegacy<CurrentChatEvent, Chat?>(
  null,
  serializer: Serializer(
    key: 'currentChat',
    fromJson: Chat.fromJson,
  ),
)
  ..register<_CurrentChatEventLoad>(
    (_, state) => state?.copyWith(),
  )
  ..register<_CurrentChatEventCreateQuery>(
    (_, state) => state?.copyWith(),
  )
  ..register<_CurrentChatEventCreateResponse>(
    (_, state) => state?.copyWith(),
  )
  ..register<_CurrentChatEventDelete>(
    (_, state) => state?.copyWith(),
  )
  ..register<_CurrentChatEventChangeTitle>(
    (_, state) => state?.copyWith(),
  );

@freezed
class CurrentChatEvent with _$CurrentChatEvent {
  const factory CurrentChatEvent.load(Chat chat) = _CurrentChatEventLoad;
  const factory CurrentChatEvent.createQuery(QueryResponseModel model) =
      _CurrentChatEventCreateQuery;
  const factory CurrentChatEvent.createResponse(QueryResponseModel model) =
      _CurrentChatEventCreateResponse;
  const factory CurrentChatEvent.delete() = _CurrentChatEventDelete;
  const factory CurrentChatEvent.changeTitle(String title) =
      _CurrentChatEventChangeTitle;
}

// class CurrentChatRM extends Manager<Chat?> {
//   final bool autoDispose = false;
//   @override
//   final initialState = chatsRM().firstOrNull;

//   void loadChat(Chat newChat) {
//     state = newChat;
//   }

//   void createQuery(QueryResponseModel model) {}

//   void createResponse(QueryResponseModel model) {}

//   void delete() => chatsRM.delete(state!.id);

//   void changeTitle(String title) {
//     chatsRM(state?.copyWith(title: title));
//   }
// }
