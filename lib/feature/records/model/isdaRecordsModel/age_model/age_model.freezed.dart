// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'age_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AgeModel _$AgeModelFromJson(Map<String, dynamic> json) {
  return _AgeModel.fromJson(json);
}

/// @nodoc
mixin _$AgeModel {
  @JsonKey(name: 'status')
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'Data')
  List<Data>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgeModelCopyWith<AgeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgeModelCopyWith<$Res> {
  factory $AgeModelCopyWith(AgeModel value, $Res Function(AgeModel) then) =
      _$AgeModelCopyWithImpl<$Res, AgeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'Data') List<Data>? data});
}

/// @nodoc
class _$AgeModelCopyWithImpl<$Res, $Val extends AgeModel>
    implements $AgeModelCopyWith<$Res> {
  _$AgeModelCopyWithImpl(this._value, this._then);

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
abstract class _$$AgeModelImplCopyWith<$Res>
    implements $AgeModelCopyWith<$Res> {
  factory _$$AgeModelImplCopyWith(
          _$AgeModelImpl value, $Res Function(_$AgeModelImpl) then) =
      __$$AgeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'Data') List<Data>? data});
}

/// @nodoc
class __$$AgeModelImplCopyWithImpl<$Res>
    extends _$AgeModelCopyWithImpl<$Res, _$AgeModelImpl>
    implements _$$AgeModelImplCopyWith<$Res> {
  __$$AgeModelImplCopyWithImpl(
      _$AgeModelImpl _value, $Res Function(_$AgeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AgeModelImpl(
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
class _$AgeModelImpl implements _AgeModel {
  const _$AgeModelImpl(
      {@JsonKey(name: 'status') this.status = false,
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'Data') final List<Data>? data = const []})
      : _data = data;

  factory _$AgeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgeModelImplFromJson(json);

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
    return 'AgeModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgeModelImpl &&
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
  _$$AgeModelImplCopyWith<_$AgeModelImpl> get copyWith =>
      __$$AgeModelImplCopyWithImpl<_$AgeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgeModelImplToJson(
      this,
    );
  }
}

abstract class _AgeModel implements AgeModel {
  const factory _AgeModel(
      {@JsonKey(name: 'status') final bool? status,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'Data') final List<Data>? data}) = _$AgeModelImpl;

  factory _AgeModel.fromJson(Map<String, dynamic> json) =
      _$AgeModelImpl.fromJson;

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
  _$$AgeModelImplCopyWith<_$AgeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: 'age_id')
  int? get ageId => throw _privateConstructorUsedError;
  @JsonKey(name: "min_age")
  int? get minAge => throw _privateConstructorUsedError;
  @JsonKey(name: "max_age")
  int? get maxAge => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'age_id') int? ageId,
      @JsonKey(name: "min_age") int? minAge,
      @JsonKey(name: "max_age") int? maxAge});
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
    Object? ageId = freezed,
    Object? minAge = freezed,
    Object? maxAge = freezed,
  }) {
    return _then(_value.copyWith(
      ageId: freezed == ageId
          ? _value.ageId
          : ageId // ignore: cast_nullable_to_non_nullable
              as int?,
      minAge: freezed == minAge
          ? _value.minAge
          : minAge // ignore: cast_nullable_to_non_nullable
              as int?,
      maxAge: freezed == maxAge
          ? _value.maxAge
          : maxAge // ignore: cast_nullable_to_non_nullable
              as int?,
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
      {@JsonKey(name: 'age_id') int? ageId,
      @JsonKey(name: "min_age") int? minAge,
      @JsonKey(name: "max_age") int? maxAge});
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
    Object? ageId = freezed,
    Object? minAge = freezed,
    Object? maxAge = freezed,
  }) {
    return _then(_$DataImpl(
      ageId: freezed == ageId
          ? _value.ageId
          : ageId // ignore: cast_nullable_to_non_nullable
              as int?,
      minAge: freezed == minAge
          ? _value.minAge
          : minAge // ignore: cast_nullable_to_non_nullable
              as int?,
      maxAge: freezed == maxAge
          ? _value.maxAge
          : maxAge // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: 'age_id') this.ageId = 0,
      @JsonKey(name: "min_age") this.minAge = 0,
      @JsonKey(name: "max_age") this.maxAge = 0});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: 'age_id')
  final int? ageId;
  @override
  @JsonKey(name: "min_age")
  final int? minAge;
  @override
  @JsonKey(name: "max_age")
  final int? maxAge;

  @override
  String toString() {
    return 'Data(ageId: $ageId, minAge: $minAge, maxAge: $maxAge)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.ageId, ageId) || other.ageId == ageId) &&
            (identical(other.minAge, minAge) || other.minAge == minAge) &&
            (identical(other.maxAge, maxAge) || other.maxAge == maxAge));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ageId, minAge, maxAge);

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
      {@JsonKey(name: 'age_id') final int? ageId,
      @JsonKey(name: "min_age") final int? minAge,
      @JsonKey(name: "max_age") final int? maxAge}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: 'age_id')
  int? get ageId;
  @override
  @JsonKey(name: "min_age")
  int? get minAge;
  @override
  @JsonKey(name: "max_age")
  int? get maxAge;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
