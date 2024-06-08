// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'performance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PerformanceModel _$PerformanceModelFromJson(Map<String, dynamic> json) {
  return _PerformanceModel.fromJson(json);
}

/// @nodoc
mixin _$PerformanceModel {
  @JsonKey(name: 'status')
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  GraphData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PerformanceModelCopyWith<PerformanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PerformanceModelCopyWith<$Res> {
  factory $PerformanceModelCopyWith(
          PerformanceModel value, $Res Function(PerformanceModel) then) =
      _$PerformanceModelCopyWithImpl<$Res, PerformanceModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') GraphData? data});

  $GraphDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$PerformanceModelCopyWithImpl<$Res, $Val extends PerformanceModel>
    implements $PerformanceModelCopyWith<$Res> {
  _$PerformanceModelCopyWithImpl(this._value, this._then);

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
              as GraphData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GraphDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $GraphDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PerformanceModelImplCopyWith<$Res>
    implements $PerformanceModelCopyWith<$Res> {
  factory _$$PerformanceModelImplCopyWith(_$PerformanceModelImpl value,
          $Res Function(_$PerformanceModelImpl) then) =
      __$$PerformanceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') GraphData? data});

  @override
  $GraphDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$PerformanceModelImplCopyWithImpl<$Res>
    extends _$PerformanceModelCopyWithImpl<$Res, _$PerformanceModelImpl>
    implements _$$PerformanceModelImplCopyWith<$Res> {
  __$$PerformanceModelImplCopyWithImpl(_$PerformanceModelImpl _value,
      $Res Function(_$PerformanceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$PerformanceModelImpl(
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
              as GraphData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PerformanceModelImpl implements _PerformanceModel {
  const _$PerformanceModelImpl(
      {@JsonKey(name: 'status') this.status = false,
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'data') this.data});

  factory _$PerformanceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PerformanceModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final bool? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final GraphData? data;

  @override
  String toString() {
    return 'PerformanceModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PerformanceModelImpl &&
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
  _$$PerformanceModelImplCopyWith<_$PerformanceModelImpl> get copyWith =>
      __$$PerformanceModelImplCopyWithImpl<_$PerformanceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PerformanceModelImplToJson(
      this,
    );
  }
}

abstract class _PerformanceModel implements PerformanceModel {
  const factory _PerformanceModel(
      {@JsonKey(name: 'status') final bool? status,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'data') final GraphData? data}) = _$PerformanceModelImpl;

  factory _PerformanceModel.fromJson(Map<String, dynamic> json) =
      _$PerformanceModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  bool? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  GraphData? get data;
  @override
  @JsonKey(ignore: true)
  _$$PerformanceModelImplCopyWith<_$PerformanceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GraphData _$GraphDataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$GraphData {
  @JsonKey(name: "total_games_played")
  int? get totalGamesPlayed => throw _privateConstructorUsedError;
  @JsonKey(name: "games_data")
  List<GamesData>? get gamesData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GraphDataCopyWith<GraphData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GraphDataCopyWith<$Res> {
  factory $GraphDataCopyWith(GraphData value, $Res Function(GraphData) then) =
      _$GraphDataCopyWithImpl<$Res, GraphData>;
  @useResult
  $Res call(
      {@JsonKey(name: "total_games_played") int? totalGamesPlayed,
      @JsonKey(name: "games_data") List<GamesData>? gamesData});
}

/// @nodoc
class _$GraphDataCopyWithImpl<$Res, $Val extends GraphData>
    implements $GraphDataCopyWith<$Res> {
  _$GraphDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalGamesPlayed = freezed,
    Object? gamesData = freezed,
  }) {
    return _then(_value.copyWith(
      totalGamesPlayed: freezed == totalGamesPlayed
          ? _value.totalGamesPlayed
          : totalGamesPlayed // ignore: cast_nullable_to_non_nullable
              as int?,
      gamesData: freezed == gamesData
          ? _value.gamesData
          : gamesData // ignore: cast_nullable_to_non_nullable
              as List<GamesData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $GraphDataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "total_games_played") int? totalGamesPlayed,
      @JsonKey(name: "games_data") List<GamesData>? gamesData});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$GraphDataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalGamesPlayed = freezed,
    Object? gamesData = freezed,
  }) {
    return _then(_$DataImpl(
      totalGamesPlayed: freezed == totalGamesPlayed
          ? _value.totalGamesPlayed
          : totalGamesPlayed // ignore: cast_nullable_to_non_nullable
              as int?,
      gamesData: freezed == gamesData
          ? _value._gamesData
          : gamesData // ignore: cast_nullable_to_non_nullable
              as List<GamesData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "total_games_played") this.totalGamesPlayed = 0,
      @JsonKey(name: "games_data") final List<GamesData>? gamesData = const []})
      : _gamesData = gamesData;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "total_games_played")
  final int? totalGamesPlayed;
  final List<GamesData>? _gamesData;
  @override
  @JsonKey(name: "games_data")
  List<GamesData>? get gamesData {
    final value = _gamesData;
    if (value == null) return null;
    if (_gamesData is EqualUnmodifiableListView) return _gamesData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GraphData(totalGamesPlayed: $totalGamesPlayed, gamesData: $gamesData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.totalGamesPlayed, totalGamesPlayed) ||
                other.totalGamesPlayed == totalGamesPlayed) &&
            const DeepCollectionEquality()
                .equals(other._gamesData, _gamesData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalGamesPlayed,
      const DeepCollectionEquality().hash(_gamesData));

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

abstract class _Data implements GraphData {
  const factory _Data(
          {@JsonKey(name: "total_games_played") final int? totalGamesPlayed,
          @JsonKey(name: "games_data") final List<GamesData>? gamesData}) =
      _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "total_games_played")
  int? get totalGamesPlayed;
  @override
  @JsonKey(name: "games_data")
  List<GamesData>? get gamesData;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GamesData _$GamesDataFromJson(Map<String, dynamic> json) {
  return _GamesData.fromJson(json);
}

/// @nodoc
mixin _$GamesData {
  @JsonKey(name: "game_type_id")
  int? get gameTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "game_type_name")
  String? get gameTypeName => throw _privateConstructorUsedError;
  @JsonKey(name: "games_played")
  int? get gamesPlayed => throw _privateConstructorUsedError;
  @JsonKey(name: "best_records")
  String? get bestRecords => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GamesDataCopyWith<GamesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamesDataCopyWith<$Res> {
  factory $GamesDataCopyWith(GamesData value, $Res Function(GamesData) then) =
      _$GamesDataCopyWithImpl<$Res, GamesData>;
  @useResult
  $Res call(
      {@JsonKey(name: "game_type_id") int? gameTypeId,
      @JsonKey(name: "game_type_name") String? gameTypeName,
      @JsonKey(name: "games_played") int? gamesPlayed,
      @JsonKey(name: "best_records") String? bestRecords});
}

/// @nodoc
class _$GamesDataCopyWithImpl<$Res, $Val extends GamesData>
    implements $GamesDataCopyWith<$Res> {
  _$GamesDataCopyWithImpl(this._value, this._then);

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
    Object? bestRecords = freezed,
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
      bestRecords: freezed == bestRecords
          ? _value.bestRecords
          : bestRecords // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GamesDataImplCopyWith<$Res>
    implements $GamesDataCopyWith<$Res> {
  factory _$$GamesDataImplCopyWith(
          _$GamesDataImpl value, $Res Function(_$GamesDataImpl) then) =
      __$$GamesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "game_type_id") int? gameTypeId,
      @JsonKey(name: "game_type_name") String? gameTypeName,
      @JsonKey(name: "games_played") int? gamesPlayed,
      @JsonKey(name: "best_records") String? bestRecords});
}

/// @nodoc
class __$$GamesDataImplCopyWithImpl<$Res>
    extends _$GamesDataCopyWithImpl<$Res, _$GamesDataImpl>
    implements _$$GamesDataImplCopyWith<$Res> {
  __$$GamesDataImplCopyWithImpl(
      _$GamesDataImpl _value, $Res Function(_$GamesDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameTypeId = freezed,
    Object? gameTypeName = freezed,
    Object? gamesPlayed = freezed,
    Object? bestRecords = freezed,
  }) {
    return _then(_$GamesDataImpl(
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
      bestRecords: freezed == bestRecords
          ? _value.bestRecords
          : bestRecords // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GamesDataImpl implements _GamesData {
  const _$GamesDataImpl(
      {@JsonKey(name: "game_type_id") this.gameTypeId = 0,
      @JsonKey(name: "game_type_name") this.gameTypeName = '',
      @JsonKey(name: "games_played") this.gamesPlayed = 0,
      @JsonKey(name: "best_records") this.bestRecords = ''});

  factory _$GamesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GamesDataImplFromJson(json);

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
  @JsonKey(name: "best_records")
  final String? bestRecords;

  @override
  String toString() {
    return 'GamesData(gameTypeId: $gameTypeId, gameTypeName: $gameTypeName, gamesPlayed: $gamesPlayed, bestRecords: $bestRecords)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GamesDataImpl &&
            (identical(other.gameTypeId, gameTypeId) ||
                other.gameTypeId == gameTypeId) &&
            (identical(other.gameTypeName, gameTypeName) ||
                other.gameTypeName == gameTypeName) &&
            (identical(other.gamesPlayed, gamesPlayed) ||
                other.gamesPlayed == gamesPlayed) &&
            (identical(other.bestRecords, bestRecords) ||
                other.bestRecords == bestRecords));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, gameTypeId, gameTypeName, gamesPlayed, bestRecords);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GamesDataImplCopyWith<_$GamesDataImpl> get copyWith =>
      __$$GamesDataImplCopyWithImpl<_$GamesDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GamesDataImplToJson(
      this,
    );
  }
}

abstract class _GamesData implements GamesData {
  const factory _GamesData(
          {@JsonKey(name: "game_type_id") final int? gameTypeId,
          @JsonKey(name: "game_type_name") final String? gameTypeName,
          @JsonKey(name: "games_played") final int? gamesPlayed,
          @JsonKey(name: "best_records") final String? bestRecords}) =
      _$GamesDataImpl;

  factory _GamesData.fromJson(Map<String, dynamic> json) =
      _$GamesDataImpl.fromJson;

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
  @JsonKey(name: "best_records")
  String? get bestRecords;
  @override
  @JsonKey(ignore: true)
  _$$GamesDataImplCopyWith<_$GamesDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
