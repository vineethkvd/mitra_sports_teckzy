// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gametype_model.dart';

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
  List<Data>? get data => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'Data') List<Data>? data});
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
              as List<Data>?,
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
      @JsonKey(name: 'Data') List<Data>? data});
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
    Object? data = freezed,
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
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameTypeModelImpl implements _GameTypeModel {
  const _$GameTypeModelImpl(
      {@JsonKey(name: 'status') this.status = false,
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'Data') final List<Data>? data = const []})
      : _data = data;

  factory _$GameTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameTypeModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final bool? status;
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
    return 'GameTypeModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameTypeModelImpl &&
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
      @JsonKey(name: 'Data') final List<Data>? data}) = _$GameTypeModelImpl;

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
  List<Data>? get data;
  @override
  @JsonKey(ignore: true)
  _$$GameTypeModelImplCopyWith<_$GameTypeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: 'game_type_id')
  int? get gameTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'game_type_name')
  String? get gameTypeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'game_type_img')
  String? get gameTypeImg => throw _privateConstructorUsedError;
  @JsonKey(name: 'game_type_createed_dt')
  String? get gameTypeCreateedDt => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'game_type_id') int? gameTypeId,
      @JsonKey(name: 'game_type_name') String? gameTypeName,
      @JsonKey(name: 'game_type_img') String? gameTypeImg,
      @JsonKey(name: 'game_type_createed_dt') String? gameTypeCreateedDt});
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
    Object? gameTypeId = freezed,
    Object? gameTypeName = freezed,
    Object? gameTypeImg = freezed,
    Object? gameTypeCreateedDt = freezed,
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
      gameTypeImg: freezed == gameTypeImg
          ? _value.gameTypeImg
          : gameTypeImg // ignore: cast_nullable_to_non_nullable
              as String?,
      gameTypeCreateedDt: freezed == gameTypeCreateedDt
          ? _value.gameTypeCreateedDt
          : gameTypeCreateedDt // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: 'game_type_id') int? gameTypeId,
      @JsonKey(name: 'game_type_name') String? gameTypeName,
      @JsonKey(name: 'game_type_img') String? gameTypeImg,
      @JsonKey(name: 'game_type_createed_dt') String? gameTypeCreateedDt});
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
    Object? gameTypeId = freezed,
    Object? gameTypeName = freezed,
    Object? gameTypeImg = freezed,
    Object? gameTypeCreateedDt = freezed,
  }) {
    return _then(_$DataImpl(
      gameTypeId: freezed == gameTypeId
          ? _value.gameTypeId
          : gameTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      gameTypeName: freezed == gameTypeName
          ? _value.gameTypeName
          : gameTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      gameTypeImg: freezed == gameTypeImg
          ? _value.gameTypeImg
          : gameTypeImg // ignore: cast_nullable_to_non_nullable
              as String?,
      gameTypeCreateedDt: freezed == gameTypeCreateedDt
          ? _value.gameTypeCreateedDt
          : gameTypeCreateedDt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: 'game_type_id') this.gameTypeId = 0,
      @JsonKey(name: 'game_type_name') this.gameTypeName = '',
      @JsonKey(name: 'game_type_img') this.gameTypeImg = '',
      @JsonKey(name: 'game_type_createed_dt') this.gameTypeCreateedDt = ''});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: 'game_type_id')
  final int? gameTypeId;
  @override
  @JsonKey(name: 'game_type_name')
  final String? gameTypeName;
  @override
  @JsonKey(name: 'game_type_img')
  final String? gameTypeImg;
  @override
  @JsonKey(name: 'game_type_createed_dt')
  final String? gameTypeCreateedDt;

  @override
  String toString() {
    return 'Data(gameTypeId: $gameTypeId, gameTypeName: $gameTypeName, gameTypeImg: $gameTypeImg, gameTypeCreateedDt: $gameTypeCreateedDt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.gameTypeId, gameTypeId) ||
                other.gameTypeId == gameTypeId) &&
            (identical(other.gameTypeName, gameTypeName) ||
                other.gameTypeName == gameTypeName) &&
            (identical(other.gameTypeImg, gameTypeImg) ||
                other.gameTypeImg == gameTypeImg) &&
            (identical(other.gameTypeCreateedDt, gameTypeCreateedDt) ||
                other.gameTypeCreateedDt == gameTypeCreateedDt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, gameTypeId, gameTypeName, gameTypeImg, gameTypeCreateedDt);

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
      {@JsonKey(name: 'game_type_id') final int? gameTypeId,
      @JsonKey(name: 'game_type_name') final String? gameTypeName,
      @JsonKey(name: 'game_type_img') final String? gameTypeImg,
      @JsonKey(name: 'game_type_createed_dt')
      final String? gameTypeCreateedDt}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: 'game_type_id')
  int? get gameTypeId;
  @override
  @JsonKey(name: 'game_type_name')
  String? get gameTypeName;
  @override
  @JsonKey(name: 'game_type_img')
  String? get gameTypeImg;
  @override
  @JsonKey(name: 'game_type_createed_dt')
  String? get gameTypeCreateedDt;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
