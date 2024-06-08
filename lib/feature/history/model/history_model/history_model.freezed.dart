// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HistoryModel _$HistoryModelFromJson(Map<String, dynamic> json) {
  return _historyModel.fromJson(json);
}

/// @nodoc
mixin _$HistoryModel {
  @JsonKey(name: 'status')
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<HistoryList>? get historyList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoryModelCopyWith<HistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryModelCopyWith<$Res> {
  factory $HistoryModelCopyWith(
          HistoryModel value, $Res Function(HistoryModel) then) =
      _$HistoryModelCopyWithImpl<$Res, HistoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<HistoryList>? historyList});
}

/// @nodoc
class _$HistoryModelCopyWithImpl<$Res, $Val extends HistoryModel>
    implements $HistoryModelCopyWith<$Res> {
  _$HistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? historyList = freezed,
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
      historyList: freezed == historyList
          ? _value.historyList
          : historyList // ignore: cast_nullable_to_non_nullable
              as List<HistoryList>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$historyModelImplCopyWith<$Res>
    implements $HistoryModelCopyWith<$Res> {
  factory _$$historyModelImplCopyWith(
          _$historyModelImpl value, $Res Function(_$historyModelImpl) then) =
      __$$historyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<HistoryList>? historyList});
}

/// @nodoc
class __$$historyModelImplCopyWithImpl<$Res>
    extends _$HistoryModelCopyWithImpl<$Res, _$historyModelImpl>
    implements _$$historyModelImplCopyWith<$Res> {
  __$$historyModelImplCopyWithImpl(
      _$historyModelImpl _value, $Res Function(_$historyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? historyList = freezed,
  }) {
    return _then(_$historyModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      historyList: freezed == historyList
          ? _value._historyList
          : historyList // ignore: cast_nullable_to_non_nullable
              as List<HistoryList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$historyModelImpl implements _historyModel {
  const _$historyModelImpl(
      {@JsonKey(name: 'status') this.status = false,
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'data') final List<HistoryList>? historyList = const []})
      : _historyList = historyList;

  factory _$historyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$historyModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final bool? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<HistoryList>? _historyList;
  @override
  @JsonKey(name: 'data')
  List<HistoryList>? get historyList {
    final value = _historyList;
    if (value == null) return null;
    if (_historyList is EqualUnmodifiableListView) return _historyList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HistoryModel(status: $status, message: $message, historyList: $historyList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$historyModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._historyList, _historyList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_historyList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$historyModelImplCopyWith<_$historyModelImpl> get copyWith =>
      __$$historyModelImplCopyWithImpl<_$historyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$historyModelImplToJson(
      this,
    );
  }
}

abstract class _historyModel implements HistoryModel {
  const factory _historyModel(
          {@JsonKey(name: 'status') final bool? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'data') final List<HistoryList>? historyList}) =
      _$historyModelImpl;

  factory _historyModel.fromJson(Map<String, dynamic> json) =
      _$historyModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  bool? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  List<HistoryList>? get historyList;
  @override
  @JsonKey(ignore: true)
  _$$historyModelImplCopyWith<_$historyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HistoryList _$HistoryListFromJson(Map<String, dynamic> json) {
  return _historyList.fromJson(json);
}

/// @nodoc
mixin _$HistoryList {
  @JsonKey(name: 'record_id')
  int? get recordId => throw _privateConstructorUsedError;
  @JsonKey(name: 'game_id')
  int? get gameId => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  String? get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  String? get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_time')
  String? get totalTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_dt')
  String? get createdDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_name')
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'game_type_name')
  String? get gameType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoryListCopyWith<HistoryList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryListCopyWith<$Res> {
  factory $HistoryListCopyWith(
          HistoryList value, $Res Function(HistoryList) then) =
      _$HistoryListCopyWithImpl<$Res, HistoryList>;
  @useResult
  $Res call(
      {@JsonKey(name: 'record_id') int? recordId,
      @JsonKey(name: 'game_id') int? gameId,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'end_time') String? endTime,
      @JsonKey(name: 'total_time') String? totalTime,
      @JsonKey(name: 'created_dt') String? createdDate,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'game_type_name') String? gameType});
}

/// @nodoc
class _$HistoryListCopyWithImpl<$Res, $Val extends HistoryList>
    implements $HistoryListCopyWith<$Res> {
  _$HistoryListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordId = freezed,
    Object? gameId = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? totalTime = freezed,
    Object? createdDate = freezed,
    Object? userName = freezed,
    Object? userId = freezed,
    Object? gameType = freezed,
  }) {
    return _then(_value.copyWith(
      recordId: freezed == recordId
          ? _value.recordId
          : recordId // ignore: cast_nullable_to_non_nullable
              as int?,
      gameId: freezed == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as int?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTime: freezed == totalTime
          ? _value.totalTime
          : totalTime // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      gameType: freezed == gameType
          ? _value.gameType
          : gameType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$historyListImplCopyWith<$Res>
    implements $HistoryListCopyWith<$Res> {
  factory _$$historyListImplCopyWith(
          _$historyListImpl value, $Res Function(_$historyListImpl) then) =
      __$$historyListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'record_id') int? recordId,
      @JsonKey(name: 'game_id') int? gameId,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'end_time') String? endTime,
      @JsonKey(name: 'total_time') String? totalTime,
      @JsonKey(name: 'created_dt') String? createdDate,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'game_type_name') String? gameType});
}

/// @nodoc
class __$$historyListImplCopyWithImpl<$Res>
    extends _$HistoryListCopyWithImpl<$Res, _$historyListImpl>
    implements _$$historyListImplCopyWith<$Res> {
  __$$historyListImplCopyWithImpl(
      _$historyListImpl _value, $Res Function(_$historyListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordId = freezed,
    Object? gameId = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? totalTime = freezed,
    Object? createdDate = freezed,
    Object? userName = freezed,
    Object? userId = freezed,
    Object? gameType = freezed,
  }) {
    return _then(_$historyListImpl(
      recordId: freezed == recordId
          ? _value.recordId
          : recordId // ignore: cast_nullable_to_non_nullable
              as int?,
      gameId: freezed == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as int?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTime: freezed == totalTime
          ? _value.totalTime
          : totalTime // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      gameType: freezed == gameType
          ? _value.gameType
          : gameType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$historyListImpl implements _historyList {
  const _$historyListImpl(
      {@JsonKey(name: 'record_id') this.recordId = 0,
      @JsonKey(name: 'game_id') this.gameId = 0,
      @JsonKey(name: 'start_time') this.startTime = '',
      @JsonKey(name: 'end_time') this.endTime = '',
      @JsonKey(name: 'total_time') this.totalTime = '',
      @JsonKey(name: 'created_dt') this.createdDate = '',
      @JsonKey(name: 'user_name') this.userName = '',
      @JsonKey(name: 'user_id') this.userId = 0,
      @JsonKey(name: 'game_type_name') this.gameType = ''});

  factory _$historyListImpl.fromJson(Map<String, dynamic> json) =>
      _$$historyListImplFromJson(json);

  @override
  @JsonKey(name: 'record_id')
  final int? recordId;
  @override
  @JsonKey(name: 'game_id')
  final int? gameId;
  @override
  @JsonKey(name: 'start_time')
  final String? startTime;
  @override
  @JsonKey(name: 'end_time')
  final String? endTime;
  @override
  @JsonKey(name: 'total_time')
  final String? totalTime;
  @override
  @JsonKey(name: 'created_dt')
  final String? createdDate;
  @override
  @JsonKey(name: 'user_name')
  final String? userName;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'game_type_name')
  final String? gameType;

  @override
  String toString() {
    return 'HistoryList(recordId: $recordId, gameId: $gameId, startTime: $startTime, endTime: $endTime, totalTime: $totalTime, createdDate: $createdDate, userName: $userName, userId: $userId, gameType: $gameType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$historyListImpl &&
            (identical(other.recordId, recordId) ||
                other.recordId == recordId) &&
            (identical(other.gameId, gameId) || other.gameId == gameId) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.totalTime, totalTime) ||
                other.totalTime == totalTime) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.gameType, gameType) ||
                other.gameType == gameType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, recordId, gameId, startTime,
      endTime, totalTime, createdDate, userName, userId, gameType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$historyListImplCopyWith<_$historyListImpl> get copyWith =>
      __$$historyListImplCopyWithImpl<_$historyListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$historyListImplToJson(
      this,
    );
  }
}

abstract class _historyList implements HistoryList {
  const factory _historyList(
          {@JsonKey(name: 'record_id') final int? recordId,
          @JsonKey(name: 'game_id') final int? gameId,
          @JsonKey(name: 'start_time') final String? startTime,
          @JsonKey(name: 'end_time') final String? endTime,
          @JsonKey(name: 'total_time') final String? totalTime,
          @JsonKey(name: 'created_dt') final String? createdDate,
          @JsonKey(name: 'user_name') final String? userName,
          @JsonKey(name: 'user_id') final int? userId,
          @JsonKey(name: 'game_type_name') final String? gameType}) =
      _$historyListImpl;

  factory _historyList.fromJson(Map<String, dynamic> json) =
      _$historyListImpl.fromJson;

  @override
  @JsonKey(name: 'record_id')
  int? get recordId;
  @override
  @JsonKey(name: 'game_id')
  int? get gameId;
  @override
  @JsonKey(name: 'start_time')
  String? get startTime;
  @override
  @JsonKey(name: 'end_time')
  String? get endTime;
  @override
  @JsonKey(name: 'total_time')
  String? get totalTime;
  @override
  @JsonKey(name: 'created_dt')
  String? get createdDate;
  @override
  @JsonKey(name: 'user_name')
  String? get userName;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'game_type_name')
  String? get gameType;
  @override
  @JsonKey(ignore: true)
  _$$historyListImplCopyWith<_$historyListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
