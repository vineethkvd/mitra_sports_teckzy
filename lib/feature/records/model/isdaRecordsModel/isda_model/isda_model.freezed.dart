// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'isda_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IsdaModel _$IsdaModelFromJson(Map<String, dynamic> json) {
  return _IsdaModel.fromJson(json);
}

/// @nodoc
mixin _$IsdaModel {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'Data')
  List<Data>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IsdaModelCopyWith<IsdaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IsdaModelCopyWith<$Res> {
  factory $IsdaModelCopyWith(IsdaModel value, $Res Function(IsdaModel) then) =
      _$IsdaModelCopyWithImpl<$Res, IsdaModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'Data') List<Data>? data});
}

/// @nodoc
class _$IsdaModelCopyWithImpl<$Res, $Val extends IsdaModel>
    implements $IsdaModelCopyWith<$Res> {
  _$IsdaModelCopyWithImpl(this._value, this._then);

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
abstract class _$$IsdaModelImplCopyWith<$Res>
    implements $IsdaModelCopyWith<$Res> {
  factory _$$IsdaModelImplCopyWith(
          _$IsdaModelImpl value, $Res Function(_$IsdaModelImpl) then) =
      __$$IsdaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'Data') List<Data>? data});
}

/// @nodoc
class __$$IsdaModelImplCopyWithImpl<$Res>
    extends _$IsdaModelCopyWithImpl<$Res, _$IsdaModelImpl>
    implements _$$IsdaModelImplCopyWith<$Res> {
  __$$IsdaModelImplCopyWithImpl(
      _$IsdaModelImpl _value, $Res Function(_$IsdaModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$IsdaModelImpl(
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
class _$IsdaModelImpl implements _IsdaModel {
  const _$IsdaModelImpl(
      {@JsonKey(name: "status") this.status = '',
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'Data') final List<Data>? data = const []})
      : _data = data;

  factory _$IsdaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$IsdaModelImplFromJson(json);

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
    return 'IsdaModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsdaModelImpl &&
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
  _$$IsdaModelImplCopyWith<_$IsdaModelImpl> get copyWith =>
      __$$IsdaModelImplCopyWithImpl<_$IsdaModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IsdaModelImplToJson(
      this,
    );
  }
}

abstract class _IsdaModel implements IsdaModel {
  const factory _IsdaModel(
      {@JsonKey(name: "status") final String? status,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'Data') final List<Data>? data}) = _$IsdaModelImpl;

  factory _IsdaModel.fromJson(Map<String, dynamic> json) =
      _$IsdaModelImpl.fromJson;

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
  _$$IsdaModelImplCopyWith<_$IsdaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "record_id")
  int? get recordId => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "gender_id")
  int? get genderId => throw _privateConstructorUsedError;
  @JsonKey(name: "age")
  int? get age => throw _privateConstructorUsedError;
  @JsonKey(name: "game_type_id")
  int? get gameTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "game_timing")
  String? get gameTiming => throw _privateConstructorUsedError;
  @JsonKey(name: "crtd_at")
  String? get crtdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "gender_name")
  String? get genderName => throw _privateConstructorUsedError;
  @JsonKey(name: "game_type_name")
  String? get gameTypeName => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "record_id") int? recordId,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "gender_id") int? genderId,
      @JsonKey(name: "age") int? age,
      @JsonKey(name: "game_type_id") int? gameTypeId,
      @JsonKey(name: "game_timing") String? gameTiming,
      @JsonKey(name: "crtd_at") String? crtdAt,
      @JsonKey(name: "gender_name") String? genderName,
      @JsonKey(name: "game_type_name") String? gameTypeName});
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
    Object? recordId = freezed,
    Object? name = freezed,
    Object? genderId = freezed,
    Object? age = freezed,
    Object? gameTypeId = freezed,
    Object? gameTiming = freezed,
    Object? crtdAt = freezed,
    Object? genderName = freezed,
    Object? gameTypeName = freezed,
  }) {
    return _then(_value.copyWith(
      recordId: freezed == recordId
          ? _value.recordId
          : recordId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      genderId: freezed == genderId
          ? _value.genderId
          : genderId // ignore: cast_nullable_to_non_nullable
              as int?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      gameTypeId: freezed == gameTypeId
          ? _value.gameTypeId
          : gameTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      gameTiming: freezed == gameTiming
          ? _value.gameTiming
          : gameTiming // ignore: cast_nullable_to_non_nullable
              as String?,
      crtdAt: freezed == crtdAt
          ? _value.crtdAt
          : crtdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      genderName: freezed == genderName
          ? _value.genderName
          : genderName // ignore: cast_nullable_to_non_nullable
              as String?,
      gameTypeName: freezed == gameTypeName
          ? _value.gameTypeName
          : gameTypeName // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: "record_id") int? recordId,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "gender_id") int? genderId,
      @JsonKey(name: "age") int? age,
      @JsonKey(name: "game_type_id") int? gameTypeId,
      @JsonKey(name: "game_timing") String? gameTiming,
      @JsonKey(name: "crtd_at") String? crtdAt,
      @JsonKey(name: "gender_name") String? genderName,
      @JsonKey(name: "game_type_name") String? gameTypeName});
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
    Object? recordId = freezed,
    Object? name = freezed,
    Object? genderId = freezed,
    Object? age = freezed,
    Object? gameTypeId = freezed,
    Object? gameTiming = freezed,
    Object? crtdAt = freezed,
    Object? genderName = freezed,
    Object? gameTypeName = freezed,
  }) {
    return _then(_$DataImpl(
      recordId: freezed == recordId
          ? _value.recordId
          : recordId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      genderId: freezed == genderId
          ? _value.genderId
          : genderId // ignore: cast_nullable_to_non_nullable
              as int?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      gameTypeId: freezed == gameTypeId
          ? _value.gameTypeId
          : gameTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      gameTiming: freezed == gameTiming
          ? _value.gameTiming
          : gameTiming // ignore: cast_nullable_to_non_nullable
              as String?,
      crtdAt: freezed == crtdAt
          ? _value.crtdAt
          : crtdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      genderName: freezed == genderName
          ? _value.genderName
          : genderName // ignore: cast_nullable_to_non_nullable
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
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "record_id") this.recordId = 0,
      @JsonKey(name: "name") this.name = '',
      @JsonKey(name: "gender_id") this.genderId = 0,
      @JsonKey(name: "age") this.age = 0,
      @JsonKey(name: "game_type_id") this.gameTypeId = 0,
      @JsonKey(name: "game_timing") this.gameTiming = '',
      @JsonKey(name: "crtd_at") this.crtdAt = '',
      @JsonKey(name: "gender_name") this.genderName = '',
      @JsonKey(name: "game_type_name") this.gameTypeName = ''});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "record_id")
  final int? recordId;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "gender_id")
  final int? genderId;
  @override
  @JsonKey(name: "age")
  final int? age;
  @override
  @JsonKey(name: "game_type_id")
  final int? gameTypeId;
  @override
  @JsonKey(name: "game_timing")
  final String? gameTiming;
  @override
  @JsonKey(name: "crtd_at")
  final String? crtdAt;
  @override
  @JsonKey(name: "gender_name")
  final String? genderName;
  @override
  @JsonKey(name: "game_type_name")
  final String? gameTypeName;

  @override
  String toString() {
    return 'Data(recordId: $recordId, name: $name, genderId: $genderId, age: $age, gameTypeId: $gameTypeId, gameTiming: $gameTiming, crtdAt: $crtdAt, genderName: $genderName, gameTypeName: $gameTypeName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.recordId, recordId) ||
                other.recordId == recordId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.genderId, genderId) ||
                other.genderId == genderId) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gameTypeId, gameTypeId) ||
                other.gameTypeId == gameTypeId) &&
            (identical(other.gameTiming, gameTiming) ||
                other.gameTiming == gameTiming) &&
            (identical(other.crtdAt, crtdAt) || other.crtdAt == crtdAt) &&
            (identical(other.genderName, genderName) ||
                other.genderName == genderName) &&
            (identical(other.gameTypeName, gameTypeName) ||
                other.gameTypeName == gameTypeName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, recordId, name, genderId, age,
      gameTypeId, gameTiming, crtdAt, genderName, gameTypeName);

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
          {@JsonKey(name: "record_id") final int? recordId,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "gender_id") final int? genderId,
          @JsonKey(name: "age") final int? age,
          @JsonKey(name: "game_type_id") final int? gameTypeId,
          @JsonKey(name: "game_timing") final String? gameTiming,
          @JsonKey(name: "crtd_at") final String? crtdAt,
          @JsonKey(name: "gender_name") final String? genderName,
          @JsonKey(name: "game_type_name") final String? gameTypeName}) =
      _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "record_id")
  int? get recordId;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "gender_id")
  int? get genderId;
  @override
  @JsonKey(name: "age")
  int? get age;
  @override
  @JsonKey(name: "game_type_id")
  int? get gameTypeId;
  @override
  @JsonKey(name: "game_timing")
  String? get gameTiming;
  @override
  @JsonKey(name: "crtd_at")
  String? get crtdAt;
  @override
  @JsonKey(name: "gender_name")
  String? get genderName;
  @override
  @JsonKey(name: "game_type_name")
  String? get gameTypeName;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
