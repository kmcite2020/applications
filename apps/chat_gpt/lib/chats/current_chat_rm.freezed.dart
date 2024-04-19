// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_chat_rm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CurrentChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Chat chat) load,
    required TResult Function(QueryResponseModel model) createQuery,
    required TResult Function(QueryResponseModel model) createResponse,
    required TResult Function() delete,
    required TResult Function(String title) changeTitle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Chat chat)? load,
    TResult? Function(QueryResponseModel model)? createQuery,
    TResult? Function(QueryResponseModel model)? createResponse,
    TResult? Function()? delete,
    TResult? Function(String title)? changeTitle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Chat chat)? load,
    TResult Function(QueryResponseModel model)? createQuery,
    TResult Function(QueryResponseModel model)? createResponse,
    TResult Function()? delete,
    TResult Function(String title)? changeTitle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentChatEventLoad value) load,
    required TResult Function(_CurrentChatEventCreateQuery value) createQuery,
    required TResult Function(_CurrentChatEventCreateResponse value)
        createResponse,
    required TResult Function(_CurrentChatEventDelete value) delete,
    required TResult Function(_CurrentChatEventChangeTitle value) changeTitle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrentChatEventLoad value)? load,
    TResult? Function(_CurrentChatEventCreateQuery value)? createQuery,
    TResult? Function(_CurrentChatEventCreateResponse value)? createResponse,
    TResult? Function(_CurrentChatEventDelete value)? delete,
    TResult? Function(_CurrentChatEventChangeTitle value)? changeTitle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentChatEventLoad value)? load,
    TResult Function(_CurrentChatEventCreateQuery value)? createQuery,
    TResult Function(_CurrentChatEventCreateResponse value)? createResponse,
    TResult Function(_CurrentChatEventDelete value)? delete,
    TResult Function(_CurrentChatEventChangeTitle value)? changeTitle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentChatEventCopyWith<$Res> {
  factory $CurrentChatEventCopyWith(
          CurrentChatEvent value, $Res Function(CurrentChatEvent) then) =
      _$CurrentChatEventCopyWithImpl<$Res, CurrentChatEvent>;
}

/// @nodoc
class _$CurrentChatEventCopyWithImpl<$Res, $Val extends CurrentChatEvent>
    implements $CurrentChatEventCopyWith<$Res> {
  _$CurrentChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CurrentChatEventLoadImplCopyWith<$Res> {
  factory _$$CurrentChatEventLoadImplCopyWith(_$CurrentChatEventLoadImpl value,
          $Res Function(_$CurrentChatEventLoadImpl) then) =
      __$$CurrentChatEventLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Chat chat});

  $ChatCopyWith<$Res> get chat;
}

/// @nodoc
class __$$CurrentChatEventLoadImplCopyWithImpl<$Res>
    extends _$CurrentChatEventCopyWithImpl<$Res, _$CurrentChatEventLoadImpl>
    implements _$$CurrentChatEventLoadImplCopyWith<$Res> {
  __$$CurrentChatEventLoadImplCopyWithImpl(_$CurrentChatEventLoadImpl _value,
      $Res Function(_$CurrentChatEventLoadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
  }) {
    return _then(_$CurrentChatEventLoadImpl(
      null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_value.chat, (value) {
      return _then(_value.copyWith(chat: value));
    });
  }
}

/// @nodoc

class _$CurrentChatEventLoadImpl
    with DiagnosticableTreeMixin
    implements _CurrentChatEventLoad {
  const _$CurrentChatEventLoadImpl(this.chat);

  @override
  final Chat chat;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrentChatEvent.load(chat: $chat)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CurrentChatEvent.load'))
      ..add(DiagnosticsProperty('chat', chat));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentChatEventLoadImpl &&
            (identical(other.chat, chat) || other.chat == chat));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentChatEventLoadImplCopyWith<_$CurrentChatEventLoadImpl>
      get copyWith =>
          __$$CurrentChatEventLoadImplCopyWithImpl<_$CurrentChatEventLoadImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Chat chat) load,
    required TResult Function(QueryResponseModel model) createQuery,
    required TResult Function(QueryResponseModel model) createResponse,
    required TResult Function() delete,
    required TResult Function(String title) changeTitle,
  }) {
    return load(chat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Chat chat)? load,
    TResult? Function(QueryResponseModel model)? createQuery,
    TResult? Function(QueryResponseModel model)? createResponse,
    TResult? Function()? delete,
    TResult? Function(String title)? changeTitle,
  }) {
    return load?.call(chat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Chat chat)? load,
    TResult Function(QueryResponseModel model)? createQuery,
    TResult Function(QueryResponseModel model)? createResponse,
    TResult Function()? delete,
    TResult Function(String title)? changeTitle,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(chat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentChatEventLoad value) load,
    required TResult Function(_CurrentChatEventCreateQuery value) createQuery,
    required TResult Function(_CurrentChatEventCreateResponse value)
        createResponse,
    required TResult Function(_CurrentChatEventDelete value) delete,
    required TResult Function(_CurrentChatEventChangeTitle value) changeTitle,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrentChatEventLoad value)? load,
    TResult? Function(_CurrentChatEventCreateQuery value)? createQuery,
    TResult? Function(_CurrentChatEventCreateResponse value)? createResponse,
    TResult? Function(_CurrentChatEventDelete value)? delete,
    TResult? Function(_CurrentChatEventChangeTitle value)? changeTitle,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentChatEventLoad value)? load,
    TResult Function(_CurrentChatEventCreateQuery value)? createQuery,
    TResult Function(_CurrentChatEventCreateResponse value)? createResponse,
    TResult Function(_CurrentChatEventDelete value)? delete,
    TResult Function(_CurrentChatEventChangeTitle value)? changeTitle,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _CurrentChatEventLoad implements CurrentChatEvent {
  const factory _CurrentChatEventLoad(final Chat chat) =
      _$CurrentChatEventLoadImpl;

  Chat get chat;
  @JsonKey(ignore: true)
  _$$CurrentChatEventLoadImplCopyWith<_$CurrentChatEventLoadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CurrentChatEventCreateQueryImplCopyWith<$Res> {
  factory _$$CurrentChatEventCreateQueryImplCopyWith(
          _$CurrentChatEventCreateQueryImpl value,
          $Res Function(_$CurrentChatEventCreateQueryImpl) then) =
      __$$CurrentChatEventCreateQueryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({QueryResponseModel model});

  $QueryResponseModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$CurrentChatEventCreateQueryImplCopyWithImpl<$Res>
    extends _$CurrentChatEventCopyWithImpl<$Res,
        _$CurrentChatEventCreateQueryImpl>
    implements _$$CurrentChatEventCreateQueryImplCopyWith<$Res> {
  __$$CurrentChatEventCreateQueryImplCopyWithImpl(
      _$CurrentChatEventCreateQueryImpl _value,
      $Res Function(_$CurrentChatEventCreateQueryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$CurrentChatEventCreateQueryImpl(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as QueryResponseModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $QueryResponseModelCopyWith<$Res> get model {
    return $QueryResponseModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$CurrentChatEventCreateQueryImpl
    with DiagnosticableTreeMixin
    implements _CurrentChatEventCreateQuery {
  const _$CurrentChatEventCreateQueryImpl(this.model);

  @override
  final QueryResponseModel model;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrentChatEvent.createQuery(model: $model)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CurrentChatEvent.createQuery'))
      ..add(DiagnosticsProperty('model', model));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentChatEventCreateQueryImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentChatEventCreateQueryImplCopyWith<_$CurrentChatEventCreateQueryImpl>
      get copyWith => __$$CurrentChatEventCreateQueryImplCopyWithImpl<
          _$CurrentChatEventCreateQueryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Chat chat) load,
    required TResult Function(QueryResponseModel model) createQuery,
    required TResult Function(QueryResponseModel model) createResponse,
    required TResult Function() delete,
    required TResult Function(String title) changeTitle,
  }) {
    return createQuery(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Chat chat)? load,
    TResult? Function(QueryResponseModel model)? createQuery,
    TResult? Function(QueryResponseModel model)? createResponse,
    TResult? Function()? delete,
    TResult? Function(String title)? changeTitle,
  }) {
    return createQuery?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Chat chat)? load,
    TResult Function(QueryResponseModel model)? createQuery,
    TResult Function(QueryResponseModel model)? createResponse,
    TResult Function()? delete,
    TResult Function(String title)? changeTitle,
    required TResult orElse(),
  }) {
    if (createQuery != null) {
      return createQuery(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentChatEventLoad value) load,
    required TResult Function(_CurrentChatEventCreateQuery value) createQuery,
    required TResult Function(_CurrentChatEventCreateResponse value)
        createResponse,
    required TResult Function(_CurrentChatEventDelete value) delete,
    required TResult Function(_CurrentChatEventChangeTitle value) changeTitle,
  }) {
    return createQuery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrentChatEventLoad value)? load,
    TResult? Function(_CurrentChatEventCreateQuery value)? createQuery,
    TResult? Function(_CurrentChatEventCreateResponse value)? createResponse,
    TResult? Function(_CurrentChatEventDelete value)? delete,
    TResult? Function(_CurrentChatEventChangeTitle value)? changeTitle,
  }) {
    return createQuery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentChatEventLoad value)? load,
    TResult Function(_CurrentChatEventCreateQuery value)? createQuery,
    TResult Function(_CurrentChatEventCreateResponse value)? createResponse,
    TResult Function(_CurrentChatEventDelete value)? delete,
    TResult Function(_CurrentChatEventChangeTitle value)? changeTitle,
    required TResult orElse(),
  }) {
    if (createQuery != null) {
      return createQuery(this);
    }
    return orElse();
  }
}

abstract class _CurrentChatEventCreateQuery implements CurrentChatEvent {
  const factory _CurrentChatEventCreateQuery(final QueryResponseModel model) =
      _$CurrentChatEventCreateQueryImpl;

  QueryResponseModel get model;
  @JsonKey(ignore: true)
  _$$CurrentChatEventCreateQueryImplCopyWith<_$CurrentChatEventCreateQueryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CurrentChatEventCreateResponseImplCopyWith<$Res> {
  factory _$$CurrentChatEventCreateResponseImplCopyWith(
          _$CurrentChatEventCreateResponseImpl value,
          $Res Function(_$CurrentChatEventCreateResponseImpl) then) =
      __$$CurrentChatEventCreateResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({QueryResponseModel model});

  $QueryResponseModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$CurrentChatEventCreateResponseImplCopyWithImpl<$Res>
    extends _$CurrentChatEventCopyWithImpl<$Res,
        _$CurrentChatEventCreateResponseImpl>
    implements _$$CurrentChatEventCreateResponseImplCopyWith<$Res> {
  __$$CurrentChatEventCreateResponseImplCopyWithImpl(
      _$CurrentChatEventCreateResponseImpl _value,
      $Res Function(_$CurrentChatEventCreateResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$CurrentChatEventCreateResponseImpl(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as QueryResponseModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $QueryResponseModelCopyWith<$Res> get model {
    return $QueryResponseModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$CurrentChatEventCreateResponseImpl
    with DiagnosticableTreeMixin
    implements _CurrentChatEventCreateResponse {
  const _$CurrentChatEventCreateResponseImpl(this.model);

  @override
  final QueryResponseModel model;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrentChatEvent.createResponse(model: $model)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CurrentChatEvent.createResponse'))
      ..add(DiagnosticsProperty('model', model));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentChatEventCreateResponseImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentChatEventCreateResponseImplCopyWith<
          _$CurrentChatEventCreateResponseImpl>
      get copyWith => __$$CurrentChatEventCreateResponseImplCopyWithImpl<
          _$CurrentChatEventCreateResponseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Chat chat) load,
    required TResult Function(QueryResponseModel model) createQuery,
    required TResult Function(QueryResponseModel model) createResponse,
    required TResult Function() delete,
    required TResult Function(String title) changeTitle,
  }) {
    return createResponse(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Chat chat)? load,
    TResult? Function(QueryResponseModel model)? createQuery,
    TResult? Function(QueryResponseModel model)? createResponse,
    TResult? Function()? delete,
    TResult? Function(String title)? changeTitle,
  }) {
    return createResponse?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Chat chat)? load,
    TResult Function(QueryResponseModel model)? createQuery,
    TResult Function(QueryResponseModel model)? createResponse,
    TResult Function()? delete,
    TResult Function(String title)? changeTitle,
    required TResult orElse(),
  }) {
    if (createResponse != null) {
      return createResponse(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentChatEventLoad value) load,
    required TResult Function(_CurrentChatEventCreateQuery value) createQuery,
    required TResult Function(_CurrentChatEventCreateResponse value)
        createResponse,
    required TResult Function(_CurrentChatEventDelete value) delete,
    required TResult Function(_CurrentChatEventChangeTitle value) changeTitle,
  }) {
    return createResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrentChatEventLoad value)? load,
    TResult? Function(_CurrentChatEventCreateQuery value)? createQuery,
    TResult? Function(_CurrentChatEventCreateResponse value)? createResponse,
    TResult? Function(_CurrentChatEventDelete value)? delete,
    TResult? Function(_CurrentChatEventChangeTitle value)? changeTitle,
  }) {
    return createResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentChatEventLoad value)? load,
    TResult Function(_CurrentChatEventCreateQuery value)? createQuery,
    TResult Function(_CurrentChatEventCreateResponse value)? createResponse,
    TResult Function(_CurrentChatEventDelete value)? delete,
    TResult Function(_CurrentChatEventChangeTitle value)? changeTitle,
    required TResult orElse(),
  }) {
    if (createResponse != null) {
      return createResponse(this);
    }
    return orElse();
  }
}

abstract class _CurrentChatEventCreateResponse implements CurrentChatEvent {
  const factory _CurrentChatEventCreateResponse(
      final QueryResponseModel model) = _$CurrentChatEventCreateResponseImpl;

  QueryResponseModel get model;
  @JsonKey(ignore: true)
  _$$CurrentChatEventCreateResponseImplCopyWith<
          _$CurrentChatEventCreateResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CurrentChatEventDeleteImplCopyWith<$Res> {
  factory _$$CurrentChatEventDeleteImplCopyWith(
          _$CurrentChatEventDeleteImpl value,
          $Res Function(_$CurrentChatEventDeleteImpl) then) =
      __$$CurrentChatEventDeleteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CurrentChatEventDeleteImplCopyWithImpl<$Res>
    extends _$CurrentChatEventCopyWithImpl<$Res, _$CurrentChatEventDeleteImpl>
    implements _$$CurrentChatEventDeleteImplCopyWith<$Res> {
  __$$CurrentChatEventDeleteImplCopyWithImpl(
      _$CurrentChatEventDeleteImpl _value,
      $Res Function(_$CurrentChatEventDeleteImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CurrentChatEventDeleteImpl
    with DiagnosticableTreeMixin
    implements _CurrentChatEventDelete {
  const _$CurrentChatEventDeleteImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrentChatEvent.delete()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CurrentChatEvent.delete'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentChatEventDeleteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Chat chat) load,
    required TResult Function(QueryResponseModel model) createQuery,
    required TResult Function(QueryResponseModel model) createResponse,
    required TResult Function() delete,
    required TResult Function(String title) changeTitle,
  }) {
    return delete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Chat chat)? load,
    TResult? Function(QueryResponseModel model)? createQuery,
    TResult? Function(QueryResponseModel model)? createResponse,
    TResult? Function()? delete,
    TResult? Function(String title)? changeTitle,
  }) {
    return delete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Chat chat)? load,
    TResult Function(QueryResponseModel model)? createQuery,
    TResult Function(QueryResponseModel model)? createResponse,
    TResult Function()? delete,
    TResult Function(String title)? changeTitle,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentChatEventLoad value) load,
    required TResult Function(_CurrentChatEventCreateQuery value) createQuery,
    required TResult Function(_CurrentChatEventCreateResponse value)
        createResponse,
    required TResult Function(_CurrentChatEventDelete value) delete,
    required TResult Function(_CurrentChatEventChangeTitle value) changeTitle,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrentChatEventLoad value)? load,
    TResult? Function(_CurrentChatEventCreateQuery value)? createQuery,
    TResult? Function(_CurrentChatEventCreateResponse value)? createResponse,
    TResult? Function(_CurrentChatEventDelete value)? delete,
    TResult? Function(_CurrentChatEventChangeTitle value)? changeTitle,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentChatEventLoad value)? load,
    TResult Function(_CurrentChatEventCreateQuery value)? createQuery,
    TResult Function(_CurrentChatEventCreateResponse value)? createResponse,
    TResult Function(_CurrentChatEventDelete value)? delete,
    TResult Function(_CurrentChatEventChangeTitle value)? changeTitle,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _CurrentChatEventDelete implements CurrentChatEvent {
  const factory _CurrentChatEventDelete() = _$CurrentChatEventDeleteImpl;
}

/// @nodoc
abstract class _$$CurrentChatEventChangeTitleImplCopyWith<$Res> {
  factory _$$CurrentChatEventChangeTitleImplCopyWith(
          _$CurrentChatEventChangeTitleImpl value,
          $Res Function(_$CurrentChatEventChangeTitleImpl) then) =
      __$$CurrentChatEventChangeTitleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$CurrentChatEventChangeTitleImplCopyWithImpl<$Res>
    extends _$CurrentChatEventCopyWithImpl<$Res,
        _$CurrentChatEventChangeTitleImpl>
    implements _$$CurrentChatEventChangeTitleImplCopyWith<$Res> {
  __$$CurrentChatEventChangeTitleImplCopyWithImpl(
      _$CurrentChatEventChangeTitleImpl _value,
      $Res Function(_$CurrentChatEventChangeTitleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$CurrentChatEventChangeTitleImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CurrentChatEventChangeTitleImpl
    with DiagnosticableTreeMixin
    implements _CurrentChatEventChangeTitle {
  const _$CurrentChatEventChangeTitleImpl(this.title);

  @override
  final String title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrentChatEvent.changeTitle(title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CurrentChatEvent.changeTitle'))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentChatEventChangeTitleImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentChatEventChangeTitleImplCopyWith<_$CurrentChatEventChangeTitleImpl>
      get copyWith => __$$CurrentChatEventChangeTitleImplCopyWithImpl<
          _$CurrentChatEventChangeTitleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Chat chat) load,
    required TResult Function(QueryResponseModel model) createQuery,
    required TResult Function(QueryResponseModel model) createResponse,
    required TResult Function() delete,
    required TResult Function(String title) changeTitle,
  }) {
    return changeTitle(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Chat chat)? load,
    TResult? Function(QueryResponseModel model)? createQuery,
    TResult? Function(QueryResponseModel model)? createResponse,
    TResult? Function()? delete,
    TResult? Function(String title)? changeTitle,
  }) {
    return changeTitle?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Chat chat)? load,
    TResult Function(QueryResponseModel model)? createQuery,
    TResult Function(QueryResponseModel model)? createResponse,
    TResult Function()? delete,
    TResult Function(String title)? changeTitle,
    required TResult orElse(),
  }) {
    if (changeTitle != null) {
      return changeTitle(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentChatEventLoad value) load,
    required TResult Function(_CurrentChatEventCreateQuery value) createQuery,
    required TResult Function(_CurrentChatEventCreateResponse value)
        createResponse,
    required TResult Function(_CurrentChatEventDelete value) delete,
    required TResult Function(_CurrentChatEventChangeTitle value) changeTitle,
  }) {
    return changeTitle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrentChatEventLoad value)? load,
    TResult? Function(_CurrentChatEventCreateQuery value)? createQuery,
    TResult? Function(_CurrentChatEventCreateResponse value)? createResponse,
    TResult? Function(_CurrentChatEventDelete value)? delete,
    TResult? Function(_CurrentChatEventChangeTitle value)? changeTitle,
  }) {
    return changeTitle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentChatEventLoad value)? load,
    TResult Function(_CurrentChatEventCreateQuery value)? createQuery,
    TResult Function(_CurrentChatEventCreateResponse value)? createResponse,
    TResult Function(_CurrentChatEventDelete value)? delete,
    TResult Function(_CurrentChatEventChangeTitle value)? changeTitle,
    required TResult orElse(),
  }) {
    if (changeTitle != null) {
      return changeTitle(this);
    }
    return orElse();
  }
}

abstract class _CurrentChatEventChangeTitle implements CurrentChatEvent {
  const factory _CurrentChatEventChangeTitle(final String title) =
      _$CurrentChatEventChangeTitleImpl;

  String get title;
  @JsonKey(ignore: true)
  _$$CurrentChatEventChangeTitleImplCopyWith<_$CurrentChatEventChangeTitleImpl>
      get copyWith => throw _privateConstructorUsedError;
}
