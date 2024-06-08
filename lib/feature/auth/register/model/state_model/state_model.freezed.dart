// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StateModelList _$StateModelListFromJson(Map<String, dynamic> json) {
  return _StateModelList.fromJson(json);
}

/// @nodoc
mixin _$StateModelList {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'Data')
  List<StateList>? get stateList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StateModelListCopyWith<StateModelList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateModelListCopyWith<$Res> {
  factory $StateModelListCopyWith(
          StateModelList value, $Res Function(StateModelList) then) =
      _$StateModelListCopyWithImpl<$Res, StateModelList>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'Data') List<StateList>? stateList});
}

/// @nodoc
class _$StateModelListCopyWithImpl<$Res, $Val extends StateModelList>
    implements $StateModelListCopyWith<$Res> {
  _$StateModelListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? stateList = freezed,
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
      stateList: freezed == stateList
          ? _value.stateList
          : stateList // ignore: cast_nullable_to_non_nullable
              as List<StateList>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StateModelListImplCopyWith<$Res>
    implements $StateModelListCopyWith<$Res> {
  factory _$$StateModelListImplCopyWith(_$StateModelListImpl value,
          $Res Function(_$StateModelListImpl) then) =
      __$$StateModelListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'Data') List<StateList>? stateList});
}

/// @nodoc
class __$$StateModelListImplCopyWithImpl<$Res>
    extends _$StateModelListCopyWithImpl<$Res, _$StateModelListImpl>
    implements _$$StateModelListImplCopyWith<$Res> {
  __$$StateModelListImplCopyWithImpl(
      _$StateModelListImpl _value, $Res Function(_$StateModelListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? stateList = freezed,
  }) {
    return _then(_$StateModelListImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      stateList: freezed == stateList
          ? _value._stateList
          : stateList // ignore: cast_nullable_to_non_nullable
              as List<StateList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StateModelListImpl implements _StateModelList {
  const _$StateModelListImpl(
      {@JsonKey(name: 'status') this.status = '',
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'Data') final List<StateList>? stateList = const []})
      : _stateList = stateList;

  factory _$StateModelListImpl.fromJson(Map<String, dynamic> json) =>
      _$$StateModelListImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<StateList>? _stateList;
  @override
  @JsonKey(name: 'Data')
  List<StateList>? get stateList {
    final value = _stateList;
    if (value == null) return null;
    if (_stateList is EqualUnmodifiableListView) return _stateList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'StateModelList(status: $status, message: $message, stateList: $stateList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateModelListImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._stateList, _stateList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_stateList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateModelListImplCopyWith<_$StateModelListImpl> get copyWith =>
      __$$StateModelListImplCopyWithImpl<_$StateModelListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StateModelListImplToJson(
      this,
    );
  }
}

abstract class _StateModelList implements StateModelList {
  const factory _StateModelList(
          {@JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'Data') final List<StateList>? stateList}) =
      _$StateModelListImpl;

  factory _StateModelList.fromJson(Map<String, dynamic> json) =
      _$StateModelListImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'Data')
  List<StateList>? get stateList;
  @override
  @JsonKey(ignore: true)
  _$$StateModelListImplCopyWith<_$StateModelListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StateList _$StateListFromJson(Map<String, dynamic> json) {
  return _StateList.fromJson(json);
}

/// @nodoc
mixin _$StateList {
  @JsonKey(name: 'state_id')
  int? get stateId => throw _privateConstructorUsedError;
  @JsonKey(name: 'state_name')
  String? get stateName => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_id')
  int? get countryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StateListCopyWith<StateList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateListCopyWith<$Res> {
  factory $StateListCopyWith(StateList value, $Res Function(StateList) then) =
      _$StateListCopyWithImpl<$Res, StateList>;
  @useResult
  $Res call(
      {@JsonKey(name: 'state_id') int? stateId,
      @JsonKey(name: 'state_name') String? stateName,
      @JsonKey(name: 'country_id') int? countryId,
      @JsonKey(name: 'status') int? status});
}

/// @nodoc
class _$StateListCopyWithImpl<$Res, $Val extends StateList>
    implements $StateListCopyWith<$Res> {
  _$StateListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateId = freezed,
    Object? stateName = freezed,
    Object? countryId = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      stateId: freezed == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as int?,
      stateName: freezed == stateName
          ? _value.stateName
          : stateName // ignore: cast_nullable_to_non_nullable
              as String?,
      countryId: freezed == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StateListImplCopyWith<$Res>
    implements $StateListCopyWith<$Res> {
  factory _$$StateListImplCopyWith(
          _$StateListImpl value, $Res Function(_$StateListImpl) then) =
      __$$StateListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'state_id') int? stateId,
      @JsonKey(name: 'state_name') String? stateName,
      @JsonKey(name: 'country_id') int? countryId,
      @JsonKey(name: 'status') int? status});
}

/// @nodoc
class __$$StateListImplCopyWithImpl<$Res>
    extends _$StateListCopyWithImpl<$Res, _$StateListImpl>
    implements _$$StateListImplCopyWith<$Res> {
  __$$StateListImplCopyWithImpl(
      _$StateListImpl _value, $Res Function(_$StateListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateId = freezed,
    Object? stateName = freezed,
    Object? countryId = freezed,
    Object? status = freezed,
  }) {
    return _then(_$StateListImpl(
      stateId: freezed == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as int?,
      stateName: freezed == stateName
          ? _value.stateName
          : stateName // ignore: cast_nullable_to_non_nullable
              as String?,
      countryId: freezed == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
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
class _$StateListImpl implements _StateList {
  const _$StateListImpl(
      {@JsonKey(name: 'state_id') this.stateId = 0,
      @JsonKey(name: 'state_name') this.stateName = '',
      @JsonKey(name: 'country_id') this.countryId = 0,
      @JsonKey(name: 'status') this.status = 0});

  factory _$StateListImpl.fromJson(Map<String, dynamic> json) =>
      _$$StateListImplFromJson(json);

  @override
  @JsonKey(name: 'state_id')
  final int? stateId;
  @override
  @JsonKey(name: 'state_name')
  final String? stateName;
  @override
  @JsonKey(name: 'country_id')
  final int? countryId;
  @override
  @JsonKey(name: 'status')
  final int? status;

  @override
  String toString() {
    return 'StateList(stateId: $stateId, stateName: $stateName, countryId: $countryId, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateListImpl &&
            (identical(other.stateId, stateId) || other.stateId == stateId) &&
            (identical(other.stateName, stateName) ||
                other.stateName == stateName) &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, stateId, stateName, countryId, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateListImplCopyWith<_$StateListImpl> get copyWith =>
      __$$StateListImplCopyWithImpl<_$StateListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StateListImplToJson(
      this,
    );
  }
}

abstract class _StateList implements StateList {
  const factory _StateList(
      {@JsonKey(name: 'state_id') final int? stateId,
      @JsonKey(name: 'state_name') final String? stateName,
      @JsonKey(name: 'country_id') final int? countryId,
      @JsonKey(name: 'status') final int? status}) = _$StateListImpl;

  factory _StateList.fromJson(Map<String, dynamic> json) =
      _$StateListImpl.fromJson;

  @override
  @JsonKey(name: 'state_id')
  int? get stateId;
  @override
  @JsonKey(name: 'state_name')
  String? get stateName;
  @override
  @JsonKey(name: 'country_id')
  int? get countryId;
  @override
  @JsonKey(name: 'status')
  int? get status;
  @override
  @JsonKey(ignore: true)
  _$$StateListImplCopyWith<_$StateListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
