// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gender_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GenderListModel _$GenderListModelFromJson(Map<String, dynamic> json) {
  return _GenderListModel.fromJson(json);
}

/// @nodoc
mixin _$GenderListModel {
  @JsonKey(name: 'status')
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'Data')
  List<GenderList>? get genderList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenderListModelCopyWith<GenderListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenderListModelCopyWith<$Res> {
  factory $GenderListModelCopyWith(
          GenderListModel value, $Res Function(GenderListModel) then) =
      _$GenderListModelCopyWithImpl<$Res, GenderListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'Data') List<GenderList>? genderList});
}

/// @nodoc
class _$GenderListModelCopyWithImpl<$Res, $Val extends GenderListModel>
    implements $GenderListModelCopyWith<$Res> {
  _$GenderListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? genderList = freezed,
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
      genderList: freezed == genderList
          ? _value.genderList
          : genderList // ignore: cast_nullable_to_non_nullable
              as List<GenderList>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenderListModelImplCopyWith<$Res>
    implements $GenderListModelCopyWith<$Res> {
  factory _$$GenderListModelImplCopyWith(_$GenderListModelImpl value,
          $Res Function(_$GenderListModelImpl) then) =
      __$$GenderListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'Data') List<GenderList>? genderList});
}

/// @nodoc
class __$$GenderListModelImplCopyWithImpl<$Res>
    extends _$GenderListModelCopyWithImpl<$Res, _$GenderListModelImpl>
    implements _$$GenderListModelImplCopyWith<$Res> {
  __$$GenderListModelImplCopyWithImpl(
      _$GenderListModelImpl _value, $Res Function(_$GenderListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? genderList = freezed,
  }) {
    return _then(_$GenderListModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      genderList: freezed == genderList
          ? _value._genderList
          : genderList // ignore: cast_nullable_to_non_nullable
              as List<GenderList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenderListModelImpl implements _GenderListModel {
  const _$GenderListModelImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'Data') final List<GenderList>? genderList = const []})
      : _genderList = genderList;

  factory _$GenderListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenderListModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final bool? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<GenderList>? _genderList;
  @override
  @JsonKey(name: 'Data')
  List<GenderList>? get genderList {
    final value = _genderList;
    if (value == null) return null;
    if (_genderList is EqualUnmodifiableListView) return _genderList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GenderListModel(status: $status, message: $message, genderList: $genderList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenderListModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._genderList, _genderList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_genderList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenderListModelImplCopyWith<_$GenderListModelImpl> get copyWith =>
      __$$GenderListModelImplCopyWithImpl<_$GenderListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenderListModelImplToJson(
      this,
    );
  }
}

abstract class _GenderListModel implements GenderListModel {
  const factory _GenderListModel(
          {@JsonKey(name: 'status') final bool? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'Data') final List<GenderList>? genderList}) =
      _$GenderListModelImpl;

  factory _GenderListModel.fromJson(Map<String, dynamic> json) =
      _$GenderListModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  bool? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'Data')
  List<GenderList>? get genderList;
  @override
  @JsonKey(ignore: true)
  _$$GenderListModelImplCopyWith<_$GenderListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GenderList _$GenderListFromJson(Map<String, dynamic> json) {
  return _GenderList.fromJson(json);
}

/// @nodoc
mixin _$GenderList {
  @JsonKey(name: 'gender_id')
  int? get genderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender_name')
  String? get genderName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenderListCopyWith<GenderList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenderListCopyWith<$Res> {
  factory $GenderListCopyWith(
          GenderList value, $Res Function(GenderList) then) =
      _$GenderListCopyWithImpl<$Res, GenderList>;
  @useResult
  $Res call(
      {@JsonKey(name: 'gender_id') int? genderId,
      @JsonKey(name: 'gender_name') String? genderName});
}

/// @nodoc
class _$GenderListCopyWithImpl<$Res, $Val extends GenderList>
    implements $GenderListCopyWith<$Res> {
  _$GenderListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genderId = freezed,
    Object? genderName = freezed,
  }) {
    return _then(_value.copyWith(
      genderId: freezed == genderId
          ? _value.genderId
          : genderId // ignore: cast_nullable_to_non_nullable
              as int?,
      genderName: freezed == genderName
          ? _value.genderName
          : genderName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenderListImplCopyWith<$Res>
    implements $GenderListCopyWith<$Res> {
  factory _$$GenderListImplCopyWith(
          _$GenderListImpl value, $Res Function(_$GenderListImpl) then) =
      __$$GenderListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'gender_id') int? genderId,
      @JsonKey(name: 'gender_name') String? genderName});
}

/// @nodoc
class __$$GenderListImplCopyWithImpl<$Res>
    extends _$GenderListCopyWithImpl<$Res, _$GenderListImpl>
    implements _$$GenderListImplCopyWith<$Res> {
  __$$GenderListImplCopyWithImpl(
      _$GenderListImpl _value, $Res Function(_$GenderListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genderId = freezed,
    Object? genderName = freezed,
  }) {
    return _then(_$GenderListImpl(
      genderId: freezed == genderId
          ? _value.genderId
          : genderId // ignore: cast_nullable_to_non_nullable
              as int?,
      genderName: freezed == genderName
          ? _value.genderName
          : genderName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenderListImpl implements _GenderList {
  const _$GenderListImpl(
      {@JsonKey(name: 'gender_id') this.genderId = 0,
      @JsonKey(name: 'gender_name') this.genderName = ''});

  factory _$GenderListImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenderListImplFromJson(json);

  @override
  @JsonKey(name: 'gender_id')
  final int? genderId;
  @override
  @JsonKey(name: 'gender_name')
  final String? genderName;

  @override
  String toString() {
    return 'GenderList(genderId: $genderId, genderName: $genderName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenderListImpl &&
            (identical(other.genderId, genderId) ||
                other.genderId == genderId) &&
            (identical(other.genderName, genderName) ||
                other.genderName == genderName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, genderId, genderName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenderListImplCopyWith<_$GenderListImpl> get copyWith =>
      __$$GenderListImplCopyWithImpl<_$GenderListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenderListImplToJson(
      this,
    );
  }
}

abstract class _GenderList implements GenderList {
  const factory _GenderList(
          {@JsonKey(name: 'gender_id') final int? genderId,
          @JsonKey(name: 'gender_name') final String? genderName}) =
      _$GenderListImpl;

  factory _GenderList.fromJson(Map<String, dynamic> json) =
      _$GenderListImpl.fromJson;

  @override
  @JsonKey(name: 'gender_id')
  int? get genderId;
  @override
  @JsonKey(name: 'gender_name')
  String? get genderName;
  @override
  @JsonKey(ignore: true)
  _$$GenderListImplCopyWith<_$GenderListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
