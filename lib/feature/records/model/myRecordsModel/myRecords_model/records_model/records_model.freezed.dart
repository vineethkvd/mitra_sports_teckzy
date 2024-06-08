// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'records_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecordsModel _$RecordsModelFromJson(Map<String, dynamic> json) {
  return _recordsModel.fromJson(json);
}

/// @nodoc
mixin _$RecordsModel {
  @JsonKey(name: 'status')
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<RecordList>? get recordList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecordsModelCopyWith<RecordsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordsModelCopyWith<$Res> {
  factory $RecordsModelCopyWith(
          RecordsModel value, $Res Function(RecordsModel) then) =
      _$RecordsModelCopyWithImpl<$Res, RecordsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<RecordList>? recordList});
}

/// @nodoc
class _$RecordsModelCopyWithImpl<$Res, $Val extends RecordsModel>
    implements $RecordsModelCopyWith<$Res> {
  _$RecordsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? recordList = freezed,
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
      recordList: freezed == recordList
          ? _value.recordList
          : recordList // ignore: cast_nullable_to_non_nullable
              as List<RecordList>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$recordsModelImplCopyWith<$Res>
    implements $RecordsModelCopyWith<$Res> {
  factory _$$recordsModelImplCopyWith(
          _$recordsModelImpl value, $Res Function(_$recordsModelImpl) then) =
      __$$recordsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<RecordList>? recordList});
}

/// @nodoc
class __$$recordsModelImplCopyWithImpl<$Res>
    extends _$RecordsModelCopyWithImpl<$Res, _$recordsModelImpl>
    implements _$$recordsModelImplCopyWith<$Res> {
  __$$recordsModelImplCopyWithImpl(
      _$recordsModelImpl _value, $Res Function(_$recordsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? recordList = freezed,
  }) {
    return _then(_$recordsModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      recordList: freezed == recordList
          ? _value._recordList
          : recordList // ignore: cast_nullable_to_non_nullable
              as List<RecordList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$recordsModelImpl implements _recordsModel {
  const _$recordsModelImpl(
      {@JsonKey(name: 'status') this.status = false,
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'data') final List<RecordList>? recordList = const []})
      : _recordList = recordList;

  factory _$recordsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$recordsModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final bool? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<RecordList>? _recordList;
  @override
  @JsonKey(name: 'data')
  List<RecordList>? get recordList {
    final value = _recordList;
    if (value == null) return null;
    if (_recordList is EqualUnmodifiableListView) return _recordList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RecordsModel(status: $status, message: $message, recordList: $recordList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$recordsModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._recordList, _recordList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_recordList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$recordsModelImplCopyWith<_$recordsModelImpl> get copyWith =>
      __$$recordsModelImplCopyWithImpl<_$recordsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$recordsModelImplToJson(
      this,
    );
  }
}

abstract class _recordsModel implements RecordsModel {
  const factory _recordsModel(
          {@JsonKey(name: 'status') final bool? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'data') final List<RecordList>? recordList}) =
      _$recordsModelImpl;

  factory _recordsModel.fromJson(Map<String, dynamic> json) =
      _$recordsModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  bool? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  List<RecordList>? get recordList;
  @override
  @JsonKey(ignore: true)
  _$$recordsModelImplCopyWith<_$recordsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RecordList _$RecordListFromJson(Map<String, dynamic> json) {
  return _recordList.fromJson(json);
}

/// @nodoc
mixin _$RecordList {
  @JsonKey(name: 'record_id')
  int? get recordId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
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
  @JsonKey(name: "game_type_name")
  String? get gameTypeName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecordListCopyWith<RecordList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordListCopyWith<$Res> {
  factory $RecordListCopyWith(
          RecordList value, $Res Function(RecordList) then) =
      _$RecordListCopyWithImpl<$Res, RecordList>;
  @useResult
  $Res call(
      {@JsonKey(name: 'record_id') int? recordId,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'game_id') int? gameId,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'end_time') String? endTime,
      @JsonKey(name: 'total_time') String? totalTime,
      @JsonKey(name: 'created_dt') String? createdDate,
      @JsonKey(name: "game_type_name") String? gameTypeName});
}

/// @nodoc
class _$RecordListCopyWithImpl<$Res, $Val extends RecordList>
    implements $RecordListCopyWith<$Res> {
  _$RecordListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordId = freezed,
    Object? userId = freezed,
    Object? gameId = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? totalTime = freezed,
    Object? createdDate = freezed,
    Object? gameTypeName = freezed,
  }) {
    return _then(_value.copyWith(
      recordId: freezed == recordId
          ? _value.recordId
          : recordId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
      gameTypeName: freezed == gameTypeName
          ? _value.gameTypeName
          : gameTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$recordListImplCopyWith<$Res>
    implements $RecordListCopyWith<$Res> {
  factory _$$recordListImplCopyWith(
          _$recordListImpl value, $Res Function(_$recordListImpl) then) =
      __$$recordListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'record_id') int? recordId,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'game_id') int? gameId,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'end_time') String? endTime,
      @JsonKey(name: 'total_time') String? totalTime,
      @JsonKey(name: 'created_dt') String? createdDate,
      @JsonKey(name: "game_type_name") String? gameTypeName});
}

/// @nodoc
class __$$recordListImplCopyWithImpl<$Res>
    extends _$RecordListCopyWithImpl<$Res, _$recordListImpl>
    implements _$$recordListImplCopyWith<$Res> {
  __$$recordListImplCopyWithImpl(
      _$recordListImpl _value, $Res Function(_$recordListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordId = freezed,
    Object? userId = freezed,
    Object? gameId = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? totalTime = freezed,
    Object? createdDate = freezed,
    Object? gameTypeName = freezed,
  }) {
    return _then(_$recordListImpl(
      recordId: freezed == recordId
          ? _value.recordId
          : recordId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
      gameTypeName: freezed == gameTypeName
          ? _value.gameTypeName
          : gameTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$recordListImpl implements _recordList {
  const _$recordListImpl(
      {@JsonKey(name: 'record_id') this.recordId = 0,
      @JsonKey(name: 'user_id') this.userId = 0,
      @JsonKey(name: 'game_id') this.gameId = 0,
      @JsonKey(name: 'start_time') this.startTime = '',
      @JsonKey(name: 'end_time') this.endTime = '',
      @JsonKey(name: 'total_time') this.totalTime = '',
      @JsonKey(name: 'created_dt') this.createdDate = '',
      @JsonKey(name: "game_type_name") this.gameTypeName = ''});

  factory _$recordListImpl.fromJson(Map<String, dynamic> json) =>
      _$$recordListImplFromJson(json);

  @override
  @JsonKey(name: 'record_id')
  final int? recordId;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
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
  @JsonKey(name: "game_type_name")
  final String? gameTypeName;

  @override
  String toString() {
    return 'RecordList(recordId: $recordId, userId: $userId, gameId: $gameId, startTime: $startTime, endTime: $endTime, totalTime: $totalTime, createdDate: $createdDate, gameTypeName: $gameTypeName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$recordListImpl &&
            (identical(other.recordId, recordId) ||
                other.recordId == recordId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.gameId, gameId) || other.gameId == gameId) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.totalTime, totalTime) ||
                other.totalTime == totalTime) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.gameTypeName, gameTypeName) ||
                other.gameTypeName == gameTypeName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, recordId, userId, gameId,
      startTime, endTime, totalTime, createdDate, gameTypeName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$recordListImplCopyWith<_$recordListImpl> get copyWith =>
      __$$recordListImplCopyWithImpl<_$recordListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$recordListImplToJson(
      this,
    );
  }
}

abstract class _recordList implements RecordList {
  const factory _recordList(
          {@JsonKey(name: 'record_id') final int? recordId,
          @JsonKey(name: 'user_id') final int? userId,
          @JsonKey(name: 'game_id') final int? gameId,
          @JsonKey(name: 'start_time') final String? startTime,
          @JsonKey(name: 'end_time') final String? endTime,
          @JsonKey(name: 'total_time') final String? totalTime,
          @JsonKey(name: 'created_dt') final String? createdDate,
          @JsonKey(name: "game_type_name") final String? gameTypeName}) =
      _$recordListImpl;

  factory _recordList.fromJson(Map<String, dynamic> json) =
      _$recordListImpl.fromJson;

  @override
  @JsonKey(name: 'record_id')
  int? get recordId;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
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
  @JsonKey(name: "game_type_name")
  String? get gameTypeName;
  @override
  @JsonKey(ignore: true)
  _$$recordListImplCopyWith<_$recordListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
