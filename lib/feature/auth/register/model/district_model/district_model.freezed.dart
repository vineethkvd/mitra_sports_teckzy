// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'district_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DistrictModelList _$DistrictModelListFromJson(Map<String, dynamic> json) {
  return _districtModelList.fromJson(json);
}

/// @nodoc
mixin _$DistrictModelList {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'Data')
  List<DistrictList>? get districtList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DistrictModelListCopyWith<DistrictModelList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistrictModelListCopyWith<$Res> {
  factory $DistrictModelListCopyWith(
          DistrictModelList value, $Res Function(DistrictModelList) then) =
      _$DistrictModelListCopyWithImpl<$Res, DistrictModelList>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'Data') List<DistrictList>? districtList});
}

/// @nodoc
class _$DistrictModelListCopyWithImpl<$Res, $Val extends DistrictModelList>
    implements $DistrictModelListCopyWith<$Res> {
  _$DistrictModelListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? districtList = freezed,
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
      districtList: freezed == districtList
          ? _value.districtList
          : districtList // ignore: cast_nullable_to_non_nullable
              as List<DistrictList>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$districtModelListImplCopyWith<$Res>
    implements $DistrictModelListCopyWith<$Res> {
  factory _$$districtModelListImplCopyWith(_$districtModelListImpl value,
          $Res Function(_$districtModelListImpl) then) =
      __$$districtModelListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'Data') List<DistrictList>? districtList});
}

/// @nodoc
class __$$districtModelListImplCopyWithImpl<$Res>
    extends _$DistrictModelListCopyWithImpl<$Res, _$districtModelListImpl>
    implements _$$districtModelListImplCopyWith<$Res> {
  __$$districtModelListImplCopyWithImpl(_$districtModelListImpl _value,
      $Res Function(_$districtModelListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? districtList = freezed,
  }) {
    return _then(_$districtModelListImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      districtList: freezed == districtList
          ? _value._districtList
          : districtList // ignore: cast_nullable_to_non_nullable
              as List<DistrictList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$districtModelListImpl implements _districtModelList {
  const _$districtModelListImpl(
      {@JsonKey(name: 'status') this.status = '',
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'Data') final List<DistrictList>? districtList = const []})
      : _districtList = districtList;

  factory _$districtModelListImpl.fromJson(Map<String, dynamic> json) =>
      _$$districtModelListImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<DistrictList>? _districtList;
  @override
  @JsonKey(name: 'Data')
  List<DistrictList>? get districtList {
    final value = _districtList;
    if (value == null) return null;
    if (_districtList is EqualUnmodifiableListView) return _districtList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DistrictModelList(status: $status, message: $message, districtList: $districtList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$districtModelListImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._districtList, _districtList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_districtList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$districtModelListImplCopyWith<_$districtModelListImpl> get copyWith =>
      __$$districtModelListImplCopyWithImpl<_$districtModelListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$districtModelListImplToJson(
      this,
    );
  }
}

abstract class _districtModelList implements DistrictModelList {
  const factory _districtModelList(
          {@JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'Data') final List<DistrictList>? districtList}) =
      _$districtModelListImpl;

  factory _districtModelList.fromJson(Map<String, dynamic> json) =
      _$districtModelListImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'Data')
  List<DistrictList>? get districtList;
  @override
  @JsonKey(ignore: true)
  _$$districtModelListImplCopyWith<_$districtModelListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DistrictList _$DistrictListFromJson(Map<String, dynamic> json) {
  return _districtList.fromJson(json);
}

/// @nodoc
mixin _$DistrictList {
  @JsonKey(name: 'district_id')
  int? get districtId => throw _privateConstructorUsedError;
  @JsonKey(name: 'district_name')
  String? get districtName => throw _privateConstructorUsedError;
  @JsonKey(name: 'state_id')
  int? get stateId => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DistrictListCopyWith<DistrictList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistrictListCopyWith<$Res> {
  factory $DistrictListCopyWith(
          DistrictList value, $Res Function(DistrictList) then) =
      _$DistrictListCopyWithImpl<$Res, DistrictList>;
  @useResult
  $Res call(
      {@JsonKey(name: 'district_id') int? districtId,
      @JsonKey(name: 'district_name') String? districtName,
      @JsonKey(name: 'state_id') int? stateId,
      @JsonKey(name: 'status') int? status});
}

/// @nodoc
class _$DistrictListCopyWithImpl<$Res, $Val extends DistrictList>
    implements $DistrictListCopyWith<$Res> {
  _$DistrictListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? districtId = freezed,
    Object? districtName = freezed,
    Object? stateId = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      districtId: freezed == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as int?,
      districtName: freezed == districtName
          ? _value.districtName
          : districtName // ignore: cast_nullable_to_non_nullable
              as String?,
      stateId: freezed == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$districtListImplCopyWith<$Res>
    implements $DistrictListCopyWith<$Res> {
  factory _$$districtListImplCopyWith(
          _$districtListImpl value, $Res Function(_$districtListImpl) then) =
      __$$districtListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'district_id') int? districtId,
      @JsonKey(name: 'district_name') String? districtName,
      @JsonKey(name: 'state_id') int? stateId,
      @JsonKey(name: 'status') int? status});
}

/// @nodoc
class __$$districtListImplCopyWithImpl<$Res>
    extends _$DistrictListCopyWithImpl<$Res, _$districtListImpl>
    implements _$$districtListImplCopyWith<$Res> {
  __$$districtListImplCopyWithImpl(
      _$districtListImpl _value, $Res Function(_$districtListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? districtId = freezed,
    Object? districtName = freezed,
    Object? stateId = freezed,
    Object? status = freezed,
  }) {
    return _then(_$districtListImpl(
      districtId: freezed == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as int?,
      districtName: freezed == districtName
          ? _value.districtName
          : districtName // ignore: cast_nullable_to_non_nullable
              as String?,
      stateId: freezed == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$districtListImpl implements _districtList {
  const _$districtListImpl(
      {@JsonKey(name: 'district_id') this.districtId = 0,
      @JsonKey(name: 'district_name') this.districtName = '',
      @JsonKey(name: 'state_id') this.stateId = 0,
      @JsonKey(name: 'status') this.status = 0});

  factory _$districtListImpl.fromJson(Map<String, dynamic> json) =>
      _$$districtListImplFromJson(json);

  @override
  @JsonKey(name: 'district_id')
  final int? districtId;
  @override
  @JsonKey(name: 'district_name')
  final String? districtName;
  @override
  @JsonKey(name: 'state_id')
  final int? stateId;
  @override
  @JsonKey(name: 'status')
  final int? status;

  @override
  String toString() {
    return 'DistrictList(districtId: $districtId, districtName: $districtName, stateId: $stateId, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$districtListImpl &&
            (identical(other.districtId, districtId) ||
                other.districtId == districtId) &&
            (identical(other.districtName, districtName) ||
                other.districtName == districtName) &&
            (identical(other.stateId, stateId) || other.stateId == stateId) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, districtId, districtName, stateId, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$districtListImplCopyWith<_$districtListImpl> get copyWith =>
      __$$districtListImplCopyWithImpl<_$districtListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$districtListImplToJson(
      this,
    );
  }
}

abstract class _districtList implements DistrictList {
  const factory _districtList(
      {@JsonKey(name: 'district_id') final int? districtId,
      @JsonKey(name: 'district_name') final String? districtName,
      @JsonKey(name: 'state_id') final int? stateId,
      @JsonKey(name: 'status') final int? status}) = _$districtListImpl;

  factory _districtList.fromJson(Map<String, dynamic> json) =
      _$districtListImpl.fromJson;

  @override
  @JsonKey(name: 'district_id')
  int? get districtId;
  @override
  @JsonKey(name: 'district_name')
  String? get districtName;
  @override
  @JsonKey(name: 'state_id')
  int? get stateId;
  @override
  @JsonKey(name: 'status')
  int? get status;
  @override
  @JsonKey(ignore: true)
  _$$districtListImplCopyWith<_$districtListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
