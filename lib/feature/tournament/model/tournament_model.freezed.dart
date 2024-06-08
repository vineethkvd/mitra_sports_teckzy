// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tournament_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TournamentModel _$TournamentModelFromJson(Map<String, dynamic> json) {
  return _TournamentModel.fromJson(json);
}

/// @nodoc
mixin _$TournamentModel {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'Data')
  List<Data>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TournamentModelCopyWith<TournamentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TournamentModelCopyWith<$Res> {
  factory $TournamentModelCopyWith(
          TournamentModel value, $Res Function(TournamentModel) then) =
      _$TournamentModelCopyWithImpl<$Res, TournamentModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'Data') List<Data>? data});
}

/// @nodoc
class _$TournamentModelCopyWithImpl<$Res, $Val extends TournamentModel>
    implements $TournamentModelCopyWith<$Res> {
  _$TournamentModelCopyWithImpl(this._value, this._then);

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
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TournamentModelImplCopyWith<$Res>
    implements $TournamentModelCopyWith<$Res> {
  factory _$$TournamentModelImplCopyWith(_$TournamentModelImpl value,
          $Res Function(_$TournamentModelImpl) then) =
      __$$TournamentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'Data') List<Data>? data});
}

/// @nodoc
class __$$TournamentModelImplCopyWithImpl<$Res>
    extends _$TournamentModelCopyWithImpl<$Res, _$TournamentModelImpl>
    implements _$$TournamentModelImplCopyWith<$Res> {
  __$$TournamentModelImplCopyWithImpl(
      _$TournamentModelImpl _value, $Res Function(_$TournamentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$TournamentModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TournamentModelImpl implements _TournamentModel {
  const _$TournamentModelImpl(
      {@JsonKey(name: "status") this.status = '',
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'Data') final List<Data>? data = const []})
      : _data = data;

  factory _$TournamentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TournamentModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<Data>? _data;
  @override
  @JsonKey(name: 'Data')
  List<Data>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TournamentModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TournamentModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TournamentModelImplCopyWith<_$TournamentModelImpl> get copyWith =>
      __$$TournamentModelImplCopyWithImpl<_$TournamentModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TournamentModelImplToJson(
      this,
    );
  }
}

abstract class _TournamentModel implements TournamentModel {
  const factory _TournamentModel(
      {@JsonKey(name: "status") final String? status,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'Data') final List<Data>? data}) = _$TournamentModelImpl;

  factory _TournamentModel.fromJson(Map<String, dynamic> json) =
      _$TournamentModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'Data')
  List<Data>? get data;
  @override
  @JsonKey(ignore: true)
  _$$TournamentModelImplCopyWith<_$TournamentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "tourn_id")
  int? get tournId => throw _privateConstructorUsedError;
  @JsonKey(name: "tourn_type")
  String? get tournType => throw _privateConstructorUsedError;
  @JsonKey(name: "game_type")
  String? get gameType => throw _privateConstructorUsedError;
  @JsonKey(name: "game_type_name")
  String? get gameName => throw _privateConstructorUsedError;
  @JsonKey(name: "tourn_name")
  String? get tournName => throw _privateConstructorUsedError;
  @JsonKey(name: "tourn_image")
  String? get tournImage => throw _privateConstructorUsedError;
  @JsonKey(name: "tourn_url")
  String? get tournUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "tourn_details")
  String? get tournDetails => throw _privateConstructorUsedError;
  @JsonKey(name: "tourn_date")
  String? get tournDate => throw _privateConstructorUsedError;
  @JsonKey(name: "tourn_time")
  String? get tournTime => throw _privateConstructorUsedError;
  @JsonKey(name: "tourn_created")
  String? get tournCreated => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "tourn_id") int? tournId,
      @JsonKey(name: "tourn_type") String? tournType,
      @JsonKey(name: "game_type") String? gameType,
      @JsonKey(name: "game_type_name") String? gameName,
      @JsonKey(name: "tourn_name") String? tournName,
      @JsonKey(name: "tourn_image") String? tournImage,
      @JsonKey(name: "tourn_url") String? tournUrl,
      @JsonKey(name: "tourn_details") String? tournDetails,
      @JsonKey(name: "tourn_date") String? tournDate,
      @JsonKey(name: "tourn_time") String? tournTime,
      @JsonKey(name: "tourn_created") String? tournCreated});
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
    Object? tournId = freezed,
    Object? tournType = freezed,
    Object? gameType = freezed,
    Object? gameName = freezed,
    Object? tournName = freezed,
    Object? tournImage = freezed,
    Object? tournUrl = freezed,
    Object? tournDetails = freezed,
    Object? tournDate = freezed,
    Object? tournTime = freezed,
    Object? tournCreated = freezed,
  }) {
    return _then(_value.copyWith(
      tournId: freezed == tournId
          ? _value.tournId
          : tournId // ignore: cast_nullable_to_non_nullable
              as int?,
      tournType: freezed == tournType
          ? _value.tournType
          : tournType // ignore: cast_nullable_to_non_nullable
              as String?,
      gameType: freezed == gameType
          ? _value.gameType
          : gameType // ignore: cast_nullable_to_non_nullable
              as String?,
      gameName: freezed == gameName
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String?,
      tournName: freezed == tournName
          ? _value.tournName
          : tournName // ignore: cast_nullable_to_non_nullable
              as String?,
      tournImage: freezed == tournImage
          ? _value.tournImage
          : tournImage // ignore: cast_nullable_to_non_nullable
              as String?,
      tournUrl: freezed == tournUrl
          ? _value.tournUrl
          : tournUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      tournDetails: freezed == tournDetails
          ? _value.tournDetails
          : tournDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      tournDate: freezed == tournDate
          ? _value.tournDate
          : tournDate // ignore: cast_nullable_to_non_nullable
              as String?,
      tournTime: freezed == tournTime
          ? _value.tournTime
          : tournTime // ignore: cast_nullable_to_non_nullable
              as String?,
      tournCreated: freezed == tournCreated
          ? _value.tournCreated
          : tournCreated // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {@JsonKey(name: "tourn_id") int? tournId,
      @JsonKey(name: "tourn_type") String? tournType,
      @JsonKey(name: "game_type") String? gameType,
      @JsonKey(name: "game_type_name") String? gameName,
      @JsonKey(name: "tourn_name") String? tournName,
      @JsonKey(name: "tourn_image") String? tournImage,
      @JsonKey(name: "tourn_url") String? tournUrl,
      @JsonKey(name: "tourn_details") String? tournDetails,
      @JsonKey(name: "tourn_date") String? tournDate,
      @JsonKey(name: "tourn_time") String? tournTime,
      @JsonKey(name: "tourn_created") String? tournCreated});
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
    Object? tournId = freezed,
    Object? tournType = freezed,
    Object? gameType = freezed,
    Object? gameName = freezed,
    Object? tournName = freezed,
    Object? tournImage = freezed,
    Object? tournUrl = freezed,
    Object? tournDetails = freezed,
    Object? tournDate = freezed,
    Object? tournTime = freezed,
    Object? tournCreated = freezed,
  }) {
    return _then(_$DataImpl(
      tournId: freezed == tournId
          ? _value.tournId
          : tournId // ignore: cast_nullable_to_non_nullable
              as int?,
      tournType: freezed == tournType
          ? _value.tournType
          : tournType // ignore: cast_nullable_to_non_nullable
              as String?,
      gameType: freezed == gameType
          ? _value.gameType
          : gameType // ignore: cast_nullable_to_non_nullable
              as String?,
      gameName: freezed == gameName
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String?,
      tournName: freezed == tournName
          ? _value.tournName
          : tournName // ignore: cast_nullable_to_non_nullable
              as String?,
      tournImage: freezed == tournImage
          ? _value.tournImage
          : tournImage // ignore: cast_nullable_to_non_nullable
              as String?,
      tournUrl: freezed == tournUrl
          ? _value.tournUrl
          : tournUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      tournDetails: freezed == tournDetails
          ? _value.tournDetails
          : tournDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      tournDate: freezed == tournDate
          ? _value.tournDate
          : tournDate // ignore: cast_nullable_to_non_nullable
              as String?,
      tournTime: freezed == tournTime
          ? _value.tournTime
          : tournTime // ignore: cast_nullable_to_non_nullable
              as String?,
      tournCreated: freezed == tournCreated
          ? _value.tournCreated
          : tournCreated // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "tourn_id") this.tournId = 0,
      @JsonKey(name: "tourn_type") this.tournType = '',
      @JsonKey(name: "game_type") this.gameType = '',
      @JsonKey(name: "game_type_name") this.gameName = '',
      @JsonKey(name: "tourn_name") this.tournName = '',
      @JsonKey(name: "tourn_image") this.tournImage = '',
      @JsonKey(name: "tourn_url") this.tournUrl = '',
      @JsonKey(name: "tourn_details") this.tournDetails = '',
      @JsonKey(name: "tourn_date") this.tournDate = '',
      @JsonKey(name: "tourn_time") this.tournTime = '',
      @JsonKey(name: "tourn_created") this.tournCreated = ''});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "tourn_id")
  final int? tournId;
  @override
  @JsonKey(name: "tourn_type")
  final String? tournType;
  @override
  @JsonKey(name: "game_type")
  final String? gameType;
  @override
  @JsonKey(name: "game_type_name")
  final String? gameName;
  @override
  @JsonKey(name: "tourn_name")
  final String? tournName;
  @override
  @JsonKey(name: "tourn_image")
  final String? tournImage;
  @override
  @JsonKey(name: "tourn_url")
  final String? tournUrl;
  @override
  @JsonKey(name: "tourn_details")
  final String? tournDetails;
  @override
  @JsonKey(name: "tourn_date")
  final String? tournDate;
  @override
  @JsonKey(name: "tourn_time")
  final String? tournTime;
  @override
  @JsonKey(name: "tourn_created")
  final String? tournCreated;

  @override
  String toString() {
    return 'Data(tournId: $tournId, tournType: $tournType, gameType: $gameType, gameName: $gameName, tournName: $tournName, tournImage: $tournImage, tournUrl: $tournUrl, tournDetails: $tournDetails, tournDate: $tournDate, tournTime: $tournTime, tournCreated: $tournCreated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.tournId, tournId) || other.tournId == tournId) &&
            (identical(other.tournType, tournType) ||
                other.tournType == tournType) &&
            (identical(other.gameType, gameType) ||
                other.gameType == gameType) &&
            (identical(other.gameName, gameName) ||
                other.gameName == gameName) &&
            (identical(other.tournName, tournName) ||
                other.tournName == tournName) &&
            (identical(other.tournImage, tournImage) ||
                other.tournImage == tournImage) &&
            (identical(other.tournUrl, tournUrl) ||
                other.tournUrl == tournUrl) &&
            (identical(other.tournDetails, tournDetails) ||
                other.tournDetails == tournDetails) &&
            (identical(other.tournDate, tournDate) ||
                other.tournDate == tournDate) &&
            (identical(other.tournTime, tournTime) ||
                other.tournTime == tournTime) &&
            (identical(other.tournCreated, tournCreated) ||
                other.tournCreated == tournCreated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      tournId,
      tournType,
      gameType,
      gameName,
      tournName,
      tournImage,
      tournUrl,
      tournDetails,
      tournDate,
      tournTime,
      tournCreated);

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
      {@JsonKey(name: "tourn_id") final int? tournId,
      @JsonKey(name: "tourn_type") final String? tournType,
      @JsonKey(name: "game_type") final String? gameType,
      @JsonKey(name: "game_type_name") final String? gameName,
      @JsonKey(name: "tourn_name") final String? tournName,
      @JsonKey(name: "tourn_image") final String? tournImage,
      @JsonKey(name: "tourn_url") final String? tournUrl,
      @JsonKey(name: "tourn_details") final String? tournDetails,
      @JsonKey(name: "tourn_date") final String? tournDate,
      @JsonKey(name: "tourn_time") final String? tournTime,
      @JsonKey(name: "tourn_created") final String? tournCreated}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "tourn_id")
  int? get tournId;
  @override
  @JsonKey(name: "tourn_type")
  String? get tournType;
  @override
  @JsonKey(name: "game_type")
  String? get gameType;
  @override
  @JsonKey(name: "game_type_name")
  String? get gameName;
  @override
  @JsonKey(name: "tourn_name")
  String? get tournName;
  @override
  @JsonKey(name: "tourn_image")
  String? get tournImage;
  @override
  @JsonKey(name: "tourn_url")
  String? get tournUrl;
  @override
  @JsonKey(name: "tourn_details")
  String? get tournDetails;
  @override
  @JsonKey(name: "tourn_date")
  String? get tournDate;
  @override
  @JsonKey(name: "tourn_time")
  String? get tournTime;
  @override
  @JsonKey(name: "tourn_created")
  String? get tournCreated;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
