// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analytics_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnalyticsModel _$AnalyticsModelFromJson(Map<String, dynamic> json) {
  return _AnalyticsModel.fromJson(json);
}

/// @nodoc
mixin _$AnalyticsModel {
  @JsonKey(name: 'status')
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnalyticsModelCopyWith<AnalyticsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsModelCopyWith<$Res> {
  factory $AnalyticsModelCopyWith(
          AnalyticsModel value, $Res Function(AnalyticsModel) then) =
      _$AnalyticsModelCopyWithImpl<$Res, AnalyticsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$AnalyticsModelCopyWithImpl<$Res, $Val extends AnalyticsModel>
    implements $AnalyticsModelCopyWith<$Res> {
  _$AnalyticsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AnalyticsModelImplCopyWith<$Res>
    implements $AnalyticsModelCopyWith<$Res> {
  factory _$$AnalyticsModelImplCopyWith(_$AnalyticsModelImpl value,
          $Res Function(_$AnalyticsModelImpl) then) =
      __$$AnalyticsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$AnalyticsModelImplCopyWithImpl<$Res>
    extends _$AnalyticsModelCopyWithImpl<$Res, _$AnalyticsModelImpl>
    implements _$$AnalyticsModelImplCopyWith<$Res> {
  __$$AnalyticsModelImplCopyWithImpl(
      _$AnalyticsModelImpl _value, $Res Function(_$AnalyticsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AnalyticsModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnalyticsModelImpl implements _AnalyticsModel {
  const _$AnalyticsModelImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'data') this.data = const Data()});

  factory _$AnalyticsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnalyticsModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final bool? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final Data? data;

  @override
  String toString() {
    return 'AnalyticsModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalyticsModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalyticsModelImplCopyWith<_$AnalyticsModelImpl> get copyWith =>
      __$$AnalyticsModelImplCopyWithImpl<_$AnalyticsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnalyticsModelImplToJson(
      this,
    );
  }
}

abstract class _AnalyticsModel implements AnalyticsModel {
  const factory _AnalyticsModel(
      {@JsonKey(name: 'status') final bool? status,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'data') final Data? data}) = _$AnalyticsModelImpl;

  factory _AnalyticsModel.fromJson(Map<String, dynamic> json) =
      _$AnalyticsModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  bool? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$AnalyticsModelImplCopyWith<_$AnalyticsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "daily")
  List<Daily>? get daily => throw _privateConstructorUsedError;
  @JsonKey(name: "weekly")
  List<Daily>? get weekly => throw _privateConstructorUsedError;
  @JsonKey(name: "monthly")
  List<Daily>? get monthly => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {@JsonKey(name: "daily") List<Daily>? daily,
      @JsonKey(name: "weekly") List<Daily>? weekly,
      @JsonKey(name: "monthly") List<Daily>? monthly});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? daily = freezed,
    Object? weekly = freezed,
    Object? monthly = freezed,
  }) {
    return _then(_value.copyWith(
      daily: freezed == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<Daily>?,
      weekly: freezed == weekly
          ? _value.weekly
          : weekly // ignore: cast_nullable_to_non_nullable
              as List<Daily>?,
      monthly: freezed == monthly
          ? _value.monthly
          : monthly // ignore: cast_nullable_to_non_nullable
              as List<Daily>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "daily") List<Daily>? daily,
      @JsonKey(name: "weekly") List<Daily>? weekly,
      @JsonKey(name: "monthly") List<Daily>? monthly});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? daily = freezed,
    Object? weekly = freezed,
    Object? monthly = freezed,
  }) {
    return _then(_$DataImpl(
      daily: freezed == daily
          ? _value._daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<Daily>?,
      weekly: freezed == weekly
          ? _value._weekly
          : weekly // ignore: cast_nullable_to_non_nullable
              as List<Daily>?,
      monthly: freezed == monthly
          ? _value._monthly
          : monthly // ignore: cast_nullable_to_non_nullable
              as List<Daily>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "daily") final List<Daily>? daily = const [],
      @JsonKey(name: "weekly") final List<Daily>? weekly = const [],
      @JsonKey(name: "monthly") final List<Daily>? monthly = const []})
      : _daily = daily,
        _weekly = weekly,
        _monthly = monthly;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  final List<Daily>? _daily;
  @override
  @JsonKey(name: "daily")
  List<Daily>? get daily {
    final value = _daily;
    if (value == null) return null;
    if (_daily is EqualUnmodifiableListView) return _daily;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Daily>? _weekly;
  @override
  @JsonKey(name: "weekly")
  List<Daily>? get weekly {
    final value = _weekly;
    if (value == null) return null;
    if (_weekly is EqualUnmodifiableListView) return _weekly;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Daily>? _monthly;
  @override
  @JsonKey(name: "monthly")
  List<Daily>? get monthly {
    final value = _monthly;
    if (value == null) return null;
    if (_monthly is EqualUnmodifiableListView) return _monthly;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Data(daily: $daily, weekly: $weekly, monthly: $monthly)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality().equals(other._daily, _daily) &&
            const DeepCollectionEquality().equals(other._weekly, _weekly) &&
            const DeepCollectionEquality().equals(other._monthly, _monthly));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_daily),
      const DeepCollectionEquality().hash(_weekly),
      const DeepCollectionEquality().hash(_monthly));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {@JsonKey(name: "daily") final List<Daily>? daily,
      @JsonKey(name: "weekly") final List<Daily>? weekly,
      @JsonKey(name: "monthly") final List<Daily>? monthly}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "daily")
  List<Daily>? get daily;
  @override
  @JsonKey(name: "weekly")
  List<Daily>? get weekly;
  @override
  @JsonKey(name: "monthly")
  List<Daily>? get monthly;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Daily _$DailyFromJson(Map<String, dynamic> json) {
  return _Daily.fromJson(json);
}

/// @nodoc
mixin _$Daily {
  @JsonKey(name: "game_type_id")
  int? get gameTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "game_type_name")
  String? get gameTypeName => throw _privateConstructorUsedError;
  @JsonKey(name: "games_played")
  int? get gamesPlayed => throw _privateConstructorUsedError;
  @JsonKey(name: "min_time")
  String? get minTime => throw _privateConstructorUsedError;
  @JsonKey(name: "min_time_date")
  String? get minTimeDate => throw _privateConstructorUsedError;
  @JsonKey(name: "overall_games_played")
  int? get overallGamesPlayed => throw _privateConstructorUsedError;
  @JsonKey(name: "overall_min_time")
  String? get overallMinTime => throw _privateConstructorUsedError;
  @JsonKey(name: "overall_min_time_date")
  String? get overallMinTimeDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailyCopyWith<Daily> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyCopyWith<$Res> {
  factory $DailyCopyWith(Daily value, $Res Function(Daily) then) =
      _$DailyCopyWithImpl<$Res, Daily>;
  @useResult
  $Res call(
      {@JsonKey(name: "game_type_id") int? gameTypeId,
      @JsonKey(name: "game_type_name") String? gameTypeName,
      @JsonKey(name: "games_played") int? gamesPlayed,
      @JsonKey(name: "min_time") String? minTime,
      @JsonKey(name: "min_time_date") String? minTimeDate,
      @JsonKey(name: "overall_games_played") int? overallGamesPlayed,
      @JsonKey(name: "overall_min_time") String? overallMinTime,
      @JsonKey(name: "overall_min_time_date") String? overallMinTimeDate});
}

/// @nodoc
class _$DailyCopyWithImpl<$Res, $Val extends Daily>
    implements $DailyCopyWith<$Res> {
  _$DailyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameTypeId = freezed,
    Object? gameTypeName = freezed,
    Object? gamesPlayed = freezed,
    Object? minTime = freezed,
    Object? minTimeDate = freezed,
    Object? overallGamesPlayed = freezed,
    Object? overallMinTime = freezed,
    Object? overallMinTimeDate = freezed,
  }) {
    return _then(_value.copyWith(
      gameTypeId: freezed == gameTypeId
          ? _value.gameTypeId
          : gameTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      gameTypeName: freezed == gameTypeName
          ? _value.gameTypeName
          : gameTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      gamesPlayed: freezed == gamesPlayed
          ? _value.gamesPlayed
          : gamesPlayed // ignore: cast_nullable_to_non_nullable
              as int?,
      minTime: freezed == minTime
          ? _value.minTime
          : minTime // ignore: cast_nullable_to_non_nullable
              as String?,
      minTimeDate: freezed == minTimeDate
          ? _value.minTimeDate
          : minTimeDate // ignore: cast_nullable_to_non_nullable
              as String?,
      overallGamesPlayed: freezed == overallGamesPlayed
          ? _value.overallGamesPlayed
          : overallGamesPlayed // ignore: cast_nullable_to_non_nullable
              as int?,
      overallMinTime: freezed == overallMinTime
          ? _value.overallMinTime
          : overallMinTime // ignore: cast_nullable_to_non_nullable
              as String?,
      overallMinTimeDate: freezed == overallMinTimeDate
          ? _value.overallMinTimeDate
          : overallMinTimeDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyImplCopyWith<$Res> implements $DailyCopyWith<$Res> {
  factory _$$DailyImplCopyWith(
          _$DailyImpl value, $Res Function(_$DailyImpl) then) =
      __$$DailyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "game_type_id") int? gameTypeId,
      @JsonKey(name: "game_type_name") String? gameTypeName,
      @JsonKey(name: "games_played") int? gamesPlayed,
      @JsonKey(name: "min_time") String? minTime,
      @JsonKey(name: "min_time_date") String? minTimeDate,
      @JsonKey(name: "overall_games_played") int? overallGamesPlayed,
      @JsonKey(name: "overall_min_time") String? overallMinTime,
      @JsonKey(name: "overall_min_time_date") String? overallMinTimeDate});
}

/// @nodoc
class __$$DailyImplCopyWithImpl<$Res>
    extends _$DailyCopyWithImpl<$Res, _$DailyImpl>
    implements _$$DailyImplCopyWith<$Res> {
  __$$DailyImplCopyWithImpl(
      _$DailyImpl _value, $Res Function(_$DailyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameTypeId = freezed,
    Object? gameTypeName = freezed,
    Object? gamesPlayed = freezed,
    Object? minTime = freezed,
    Object? minTimeDate = freezed,
    Object? overallGamesPlayed = freezed,
    Object? overallMinTime = freezed,
    Object? overallMinTimeDate = freezed,
  }) {
    return _then(_$DailyImpl(
      gameTypeId: freezed == gameTypeId
          ? _value.gameTypeId
          : gameTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      gameTypeName: freezed == gameTypeName
          ? _value.gameTypeName
          : gameTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      gamesPlayed: freezed == gamesPlayed
          ? _value.gamesPlayed
          : gamesPlayed // ignore: cast_nullable_to_non_nullable
              as int?,
      minTime: freezed == minTime
          ? _value.minTime
          : minTime // ignore: cast_nullable_to_non_nullable
              as String?,
      minTimeDate: freezed == minTimeDate
          ? _value.minTimeDate
          : minTimeDate // ignore: cast_nullable_to_non_nullable
              as String?,
      overallGamesPlayed: freezed == overallGamesPlayed
          ? _value.overallGamesPlayed
          : overallGamesPlayed // ignore: cast_nullable_to_non_nullable
              as int?,
      overallMinTime: freezed == overallMinTime
          ? _value.overallMinTime
          : overallMinTime // ignore: cast_nullable_to_non_nullable
              as String?,
      overallMinTimeDate: freezed == overallMinTimeDate
          ? _value.overallMinTimeDate
          : overallMinTimeDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyImpl implements _Daily {
  const _$DailyImpl(
      {@JsonKey(name: "game_type_id") this.gameTypeId = 0,
      @JsonKey(name: "game_type_name") this.gameTypeName = '',
      @JsonKey(name: "games_played") this.gamesPlayed = 0,
      @JsonKey(name: "min_time") this.minTime = '',
      @JsonKey(name: "min_time_date") this.minTimeDate = '',
      @JsonKey(name: "overall_games_played") this.overallGamesPlayed = 0,
      @JsonKey(name: "overall_min_time") this.overallMinTime = '',
      @JsonKey(name: "overall_min_time_date") this.overallMinTimeDate = ''});

  factory _$DailyImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyImplFromJson(json);

  @override
  @JsonKey(name: "game_type_id")
  final int? gameTypeId;
  @override
  @JsonKey(name: "game_type_name")
  final String? gameTypeName;
  @override
  @JsonKey(name: "games_played")
  final int? gamesPlayed;
  @override
  @JsonKey(name: "min_time")
  final String? minTime;
  @override
  @JsonKey(name: "min_time_date")
  final String? minTimeDate;
  @override
  @JsonKey(name: "overall_games_played")
  final int? overallGamesPlayed;
  @override
  @JsonKey(name: "overall_min_time")
  final String? overallMinTime;
  @override
  @JsonKey(name: "overall_min_time_date")
  final String? overallMinTimeDate;

  @override
  String toString() {
    return 'Daily(gameTypeId: $gameTypeId, gameTypeName: $gameTypeName, gamesPlayed: $gamesPlayed, minTime: $minTime, minTimeDate: $minTimeDate, overallGamesPlayed: $overallGamesPlayed, overallMinTime: $overallMinTime, overallMinTimeDate: $overallMinTimeDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyImpl &&
            (identical(other.gameTypeId, gameTypeId) ||
                other.gameTypeId == gameTypeId) &&
            (identical(other.gameTypeName, gameTypeName) ||
                other.gameTypeName == gameTypeName) &&
            (identical(other.gamesPlayed, gamesPlayed) ||
                other.gamesPlayed == gamesPlayed) &&
            (identical(other.minTime, minTime) || other.minTime == minTime) &&
            (identical(other.minTimeDate, minTimeDate) ||
                other.minTimeDate == minTimeDate) &&
            (identical(other.overallGamesPlayed, overallGamesPlayed) ||
                other.overallGamesPlayed == overallGamesPlayed) &&
            (identical(other.overallMinTime, overallMinTime) ||
                other.overallMinTime == overallMinTime) &&
            (identical(other.overallMinTimeDate, overallMinTimeDate) ||
                other.overallMinTimeDate == overallMinTimeDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      gameTypeId,
      gameTypeName,
      gamesPlayed,
      minTime,
      minTimeDate,
      overallGamesPlayed,
      overallMinTime,
      overallMinTimeDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyImplCopyWith<_$DailyImpl> get copyWith =>
      __$$DailyImplCopyWithImpl<_$DailyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyImplToJson(
      this,
    );
  }
}

abstract class _Daily implements Daily {
  const factory _Daily(
      {@JsonKey(name: "game_type_id") final int? gameTypeId,
      @JsonKey(name: "game_type_name") final String? gameTypeName,
      @JsonKey(name: "games_played") final int? gamesPlayed,
      @JsonKey(name: "min_time") final String? minTime,
      @JsonKey(name: "min_time_date") final String? minTimeDate,
      @JsonKey(name: "overall_games_played") final int? overallGamesPlayed,
      @JsonKey(name: "overall_min_time") final String? overallMinTime,
      @JsonKey(name: "overall_min_time_date")
      final String? overallMinTimeDate}) = _$DailyImpl;

  factory _Daily.fromJson(Map<String, dynamic> json) = _$DailyImpl.fromJson;

  @override
  @JsonKey(name: "game_type_id")
  int? get gameTypeId;
  @override
  @JsonKey(name: "game_type_name")
  String? get gameTypeName;
  @override
  @JsonKey(name: "games_played")
  int? get gamesPlayed;
  @override
  @JsonKey(name: "min_time")
  String? get minTime;
  @override
  @JsonKey(name: "min_time_date")
  String? get minTimeDate;
  @override
  @JsonKey(name: "overall_games_played")
  int? get overallGamesPlayed;
  @override
  @JsonKey(name: "overall_min_time")
  String? get overallMinTime;
  @override
  @JsonKey(name: "overall_min_time_date")
  String? get overallMinTimeDate;
  @override
  @JsonKey(ignore: true)
  _$$DailyImplCopyWith<_$DailyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
