// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gameType_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GameTypeModel _$GameTypeModelFromJson(Map<String, dynamic> json) {
  return _GameTypeModel.fromJson(json);
}

/// @nodoc
mixin _$GameTypeModel {
  @JsonKey(name: 'status')
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'Data')
  List<GameList>? get gameList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameTypeModelCopyWith<GameTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameTypeModelCopyWith<$Res> {
  factory $GameTypeModelCopyWith(
          GameTypeModel value, $Res Function(GameTypeModel) then) =
      _$GameTypeModelCopyWithImpl<$Res, GameTypeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'Data') List<GameList>? gameList});
}

/// @nodoc
class _$GameTypeModelCopyWithImpl<$Res, $Val extends GameTypeModel>
    implements $GameTypeModelCopyWith<$Res> {
  _$GameTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? gameList = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      gameList: freezed == gameList
          ? _value.gameList
          : gameList // ignore: cast_nullable_to_non_nullable
              as List<GameList>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameTypeModelImplCopyWith<$Res>
    implements $GameTypeModelCopyWith<$Res> {
  factory _$$GameTypeModelImplCopyWith(
          _$GameTypeModelImpl value, $Res Function(_$GameTypeModelImpl) then) =
      __$$GameTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'Data') List<GameList>? gameList});
}

/// @nodoc
class __$$GameTypeModelImplCopyWithImpl<$Res>
    extends _$GameTypeModelCopyWithImpl<$Res, _$GameTypeModelImpl>
    implements _$$GameTypeModelImplCopyWith<$Res> {
  __$$GameTypeModelImplCopyWithImpl(
      _$GameTypeModelImpl _value, $Res Function(_$GameTypeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? gameList = freezed,
  }) {
    return _then(_$GameTypeModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      gameList: freezed == gameList
          ? _value._gameList
          : gameList // ignore: cast_nullable_to_non_nullable
              as List<GameList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameTypeModelImpl implements _GameTypeModel {
  const _$GameTypeModelImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'Data') final List<GameList>? gameList = const []})
      : _gameList = gameList;

  factory _$GameTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameTypeModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final bool? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<GameList>? _gameList;
  @override
  @JsonKey(name: 'Data')
  List<GameList>? get gameList {
    final value = _gameList;
    if (value == null) return null;
    if (_gameList is EqualUnmodifiableListView) return _gameList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GameTypeModel(status: $status, message: $message, gameList: $gameList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameTypeModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._gameList, _gameList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_gameList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameTypeModelImplCopyWith<_$GameTypeModelImpl> get copyWith =>
      __$$GameTypeModelImplCopyWithImpl<_$GameTypeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameTypeModelImplToJson(
      this,
    );
  }
}

abstract class _GameTypeModel implements GameTypeModel {
  const factory _GameTypeModel(
          {@JsonKey(name: 'status') final bool? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'Data') final List<GameList>? gameList}) =
      _$GameTypeModelImpl;

  factory _GameTypeModel.fromJson(Map<String, dynamic> json) =
      _$GameTypeModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  bool? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'Data')
  List<GameList>? get gameList;
  @override
  @JsonKey(ignore: true)
  _$$GameTypeModelImplCopyWith<_$GameTypeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GameList _$GameListFromJson(Map<String, dynamic> json) {
  return _GameList.fromJson(json);
}

/// @nodoc
mixin _$GameList {
  @JsonKey(name: 'game_type_id')
  int? get gameTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'game_type_name')
  String? get gameName => throw _privateConstructorUsedError;
  @JsonKey(name: 'game_type_img')
  String? get gameImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'game_type_createed_dt')
  String? get createdDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameListCopyWith<GameList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameListCopyWith<$Res> {
  factory $GameListCopyWith(GameList value, $Res Function(GameList) then) =
      _$GameListCopyWithImpl<$Res, GameList>;
  @useResult
  $Res call(
      {@JsonKey(name: 'game_type_id') int? gameTypeId,
      @JsonKey(name: 'game_type_name') String? gameName,
      @JsonKey(name: 'game_type_img') String? gameImage,
      @JsonKey(name: 'game_type_createed_dt') String? createdDate});
}

/// @nodoc
class _$GameListCopyWithImpl<$Res, $Val extends GameList>
    implements $GameListCopyWith<$Res> {
  _$GameListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameTypeId = freezed,
    Object? gameName = freezed,
    Object? gameImage = freezed,
    Object? createdDate = freezed,
  }) {
    return _then(_value.copyWith(
      gameTypeId: freezed == gameTypeId
          ? _value.gameTypeId
          : gameTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      gameName: freezed == gameName
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String?,
      gameImage: freezed == gameImage
          ? _value.gameImage
          : gameImage // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameListImplCopyWith<$Res>
    implements $GameListCopyWith<$Res> {
  factory _$$GameListImplCopyWith(
          _$GameListImpl value, $Res Function(_$GameListImpl) then) =
      __$$GameListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'game_type_id') int? gameTypeId,
      @JsonKey(name: 'game_type_name') String? gameName,
      @JsonKey(name: 'game_type_img') String? gameImage,
      @JsonKey(name: 'game_type_createed_dt') String? createdDate});
}

/// @nodoc
class __$$GameListImplCopyWithImpl<$Res>
    extends _$GameListCopyWithImpl<$Res, _$GameListImpl>
    implements _$$GameListImplCopyWith<$Res> {
  __$$GameListImplCopyWithImpl(
      _$GameListImpl _value, $Res Function(_$GameListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameTypeId = freezed,
    Object? gameName = freezed,
    Object? gameImage = freezed,
    Object? createdDate = freezed,
  }) {
    return _then(_$GameListImpl(
      gameTypeId: freezed == gameTypeId
          ? _value.gameTypeId
          : gameTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      gameName: freezed == gameName
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String?,
      gameImage: freezed == gameImage
          ? _value.gameImage
          : gameImage // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameListImpl implements _GameList {
  const _$GameListImpl(
      {@JsonKey(name: 'game_type_id') this.gameTypeId = 0,
      @JsonKey(name: 'game_type_name') this.gameName = '',
      @JsonKey(name: 'game_type_img') this.gameImage = '',
      @JsonKey(name: 'game_type_createed_dt') this.createdDate = ''});

  factory _$GameListImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameListImplFromJson(json);

  @override
  @JsonKey(name: 'game_type_id')
  final int? gameTypeId;
  @override
  @JsonKey(name: 'game_type_name')
  final String? gameName;
  @override
  @JsonKey(name: 'game_type_img')
  final String? gameImage;
  @override
  @JsonKey(name: 'game_type_createed_dt')
  final String? createdDate;

  @override
  String toString() {
    return 'GameList(gameTypeId: $gameTypeId, gameName: $gameName, gameImage: $gameImage, createdDate: $createdDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameListImpl &&
            (identical(other.gameTypeId, gameTypeId) ||
                other.gameTypeId == gameTypeId) &&
            (identical(other.gameName, gameName) ||
                other.gameName == gameName) &&
            (identical(other.gameImage, gameImage) ||
                other.gameImage == gameImage) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, gameTypeId, gameName, gameImage, createdDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameListImplCopyWith<_$GameListImpl> get copyWith =>
      __$$GameListImplCopyWithImpl<_$GameListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameListImplToJson(
      this,
    );
  }
}

abstract class _GameList implements GameList {
  const factory _GameList(
          {@JsonKey(name: 'game_type_id') final int? gameTypeId,
          @JsonKey(name: 'game_type_name') final String? gameName,
          @JsonKey(name: 'game_type_img') final String? gameImage,
          @JsonKey(name: 'game_type_createed_dt') final String? createdDate}) =
      _$GameListImpl;

  factory _GameList.fromJson(Map<String, dynamic> json) =
      _$GameListImpl.fromJson;

  @override
  @JsonKey(name: 'game_type_id')
  int? get gameTypeId;
  @override
  @JsonKey(name: 'game_type_name')
  String? get gameName;
  @override
  @JsonKey(name: 'game_type_img')
  String? get gameImage;
  @override
  @JsonKey(name: 'game_type_createed_dt')
  String? get createdDate;
  @override
  @JsonKey(ignore: true)
  _$$GameListImplCopyWith<_$GameListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
