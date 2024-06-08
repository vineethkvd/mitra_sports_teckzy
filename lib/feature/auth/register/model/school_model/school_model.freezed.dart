// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'school_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SchoolListModel _$SchoolListModelFromJson(Map<String, dynamic> json) {
  return _SchoolListModel.fromJson(json);
}

/// @nodoc
mixin _$SchoolListModel {
  @JsonKey(name: 'status')
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'Data')
  List<SchoolList>? get schoolList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SchoolListModelCopyWith<SchoolListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchoolListModelCopyWith<$Res> {
  factory $SchoolListModelCopyWith(
          SchoolListModel value, $Res Function(SchoolListModel) then) =
      _$SchoolListModelCopyWithImpl<$Res, SchoolListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'Data') List<SchoolList>? schoolList});
}

/// @nodoc
class _$SchoolListModelCopyWithImpl<$Res, $Val extends SchoolListModel>
    implements $SchoolListModelCopyWith<$Res> {
  _$SchoolListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? schoolList = freezed,
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
      schoolList: freezed == schoolList
          ? _value.schoolList
          : schoolList // ignore: cast_nullable_to_non_nullable
              as List<SchoolList>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SchoolListModelImplCopyWith<$Res>
    implements $SchoolListModelCopyWith<$Res> {
  factory _$$SchoolListModelImplCopyWith(_$SchoolListModelImpl value,
          $Res Function(_$SchoolListModelImpl) then) =
      __$$SchoolListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'Data') List<SchoolList>? schoolList});
}

/// @nodoc
class __$$SchoolListModelImplCopyWithImpl<$Res>
    extends _$SchoolListModelCopyWithImpl<$Res, _$SchoolListModelImpl>
    implements _$$SchoolListModelImplCopyWith<$Res> {
  __$$SchoolListModelImplCopyWithImpl(
      _$SchoolListModelImpl _value, $Res Function(_$SchoolListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? schoolList = freezed,
  }) {
    return _then(_$SchoolListModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolList: freezed == schoolList
          ? _value._schoolList
          : schoolList // ignore: cast_nullable_to_non_nullable
              as List<SchoolList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SchoolListModelImpl implements _SchoolListModel {
  const _$SchoolListModelImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'Data') final List<SchoolList>? schoolList = const []})
      : _schoolList = schoolList;

  factory _$SchoolListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SchoolListModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final bool? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<SchoolList>? _schoolList;
  @override
  @JsonKey(name: 'Data')
  List<SchoolList>? get schoolList {
    final value = _schoolList;
    if (value == null) return null;
    if (_schoolList is EqualUnmodifiableListView) return _schoolList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SchoolListModel(status: $status, message: $message, schoolList: $schoolList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchoolListModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._schoolList, _schoolList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_schoolList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SchoolListModelImplCopyWith<_$SchoolListModelImpl> get copyWith =>
      __$$SchoolListModelImplCopyWithImpl<_$SchoolListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SchoolListModelImplToJson(
      this,
    );
  }
}

abstract class _SchoolListModel implements SchoolListModel {
  const factory _SchoolListModel(
          {@JsonKey(name: 'status') final bool? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'Data') final List<SchoolList>? schoolList}) =
      _$SchoolListModelImpl;

  factory _SchoolListModel.fromJson(Map<String, dynamic> json) =
      _$SchoolListModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  bool? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'Data')
  List<SchoolList>? get schoolList;
  @override
  @JsonKey(ignore: true)
  _$$SchoolListModelImplCopyWith<_$SchoolListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SchoolList _$SchoolListFromJson(Map<String, dynamic> json) {
  return _SchoolList.fromJson(json);
}

/// @nodoc
mixin _$SchoolList {
  @JsonKey(name: 'school_id')
  int? get schoolId => throw _privateConstructorUsedError;
  @JsonKey(name: 'school_name')
  String? get schoolName => throw _privateConstructorUsedError;
  @JsonKey(name: 'school_location')
  String? get schoolLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'school_status')
  int? get schoolStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'school_create_dt')
  String? get createdt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SchoolListCopyWith<SchoolList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchoolListCopyWith<$Res> {
  factory $SchoolListCopyWith(
          SchoolList value, $Res Function(SchoolList) then) =
      _$SchoolListCopyWithImpl<$Res, SchoolList>;
  @useResult
  $Res call(
      {@JsonKey(name: 'school_id') int? schoolId,
      @JsonKey(name: 'school_name') String? schoolName,
      @JsonKey(name: 'school_location') String? schoolLocation,
      @JsonKey(name: 'school_status') int? schoolStatus,
      @JsonKey(name: 'school_create_dt') String? createdt});
}

/// @nodoc
class _$SchoolListCopyWithImpl<$Res, $Val extends SchoolList>
    implements $SchoolListCopyWith<$Res> {
  _$SchoolListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolId = freezed,
    Object? schoolName = freezed,
    Object? schoolLocation = freezed,
    Object? schoolStatus = freezed,
    Object? createdt = freezed,
  }) {
    return _then(_value.copyWith(
      schoolId: freezed == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int?,
      schoolName: freezed == schoolName
          ? _value.schoolName
          : schoolName // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolLocation: freezed == schoolLocation
          ? _value.schoolLocation
          : schoolLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolStatus: freezed == schoolStatus
          ? _value.schoolStatus
          : schoolStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      createdt: freezed == createdt
          ? _value.createdt
          : createdt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SchoolListImplCopyWith<$Res>
    implements $SchoolListCopyWith<$Res> {
  factory _$$SchoolListImplCopyWith(
          _$SchoolListImpl value, $Res Function(_$SchoolListImpl) then) =
      __$$SchoolListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'school_id') int? schoolId,
      @JsonKey(name: 'school_name') String? schoolName,
      @JsonKey(name: 'school_location') String? schoolLocation,
      @JsonKey(name: 'school_status') int? schoolStatus,
      @JsonKey(name: 'school_create_dt') String? createdt});
}

/// @nodoc
class __$$SchoolListImplCopyWithImpl<$Res>
    extends _$SchoolListCopyWithImpl<$Res, _$SchoolListImpl>
    implements _$$SchoolListImplCopyWith<$Res> {
  __$$SchoolListImplCopyWithImpl(
      _$SchoolListImpl _value, $Res Function(_$SchoolListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolId = freezed,
    Object? schoolName = freezed,
    Object? schoolLocation = freezed,
    Object? schoolStatus = freezed,
    Object? createdt = freezed,
  }) {
    return _then(_$SchoolListImpl(
      schoolId: freezed == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int?,
      schoolName: freezed == schoolName
          ? _value.schoolName
          : schoolName // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolLocation: freezed == schoolLocation
          ? _value.schoolLocation
          : schoolLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolStatus: freezed == schoolStatus
          ? _value.schoolStatus
          : schoolStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      createdt: freezed == createdt
          ? _value.createdt
          : createdt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SchoolListImpl implements _SchoolList {
  const _$SchoolListImpl(
      {@JsonKey(name: 'school_id') this.schoolId = 0,
      @JsonKey(name: 'school_name') this.schoolName = '',
      @JsonKey(name: 'school_location') this.schoolLocation = '',
      @JsonKey(name: 'school_status') this.schoolStatus = 0,
      @JsonKey(name: 'school_create_dt') this.createdt = ''});

  factory _$SchoolListImpl.fromJson(Map<String, dynamic> json) =>
      _$$SchoolListImplFromJson(json);

  @override
  @JsonKey(name: 'school_id')
  final int? schoolId;
  @override
  @JsonKey(name: 'school_name')
  final String? schoolName;
  @override
  @JsonKey(name: 'school_location')
  final String? schoolLocation;
  @override
  @JsonKey(name: 'school_status')
  final int? schoolStatus;
  @override
  @JsonKey(name: 'school_create_dt')
  final String? createdt;

  @override
  String toString() {
    return 'SchoolList(schoolId: $schoolId, schoolName: $schoolName, schoolLocation: $schoolLocation, schoolStatus: $schoolStatus, createdt: $createdt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchoolListImpl &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.schoolName, schoolName) ||
                other.schoolName == schoolName) &&
            (identical(other.schoolLocation, schoolLocation) ||
                other.schoolLocation == schoolLocation) &&
            (identical(other.schoolStatus, schoolStatus) ||
                other.schoolStatus == schoolStatus) &&
            (identical(other.createdt, createdt) ||
                other.createdt == createdt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, schoolId, schoolName,
      schoolLocation, schoolStatus, createdt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SchoolListImplCopyWith<_$SchoolListImpl> get copyWith =>
      __$$SchoolListImplCopyWithImpl<_$SchoolListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SchoolListImplToJson(
      this,
    );
  }
}

abstract class _SchoolList implements SchoolList {
  const factory _SchoolList(
          {@JsonKey(name: 'school_id') final int? schoolId,
          @JsonKey(name: 'school_name') final String? schoolName,
          @JsonKey(name: 'school_location') final String? schoolLocation,
          @JsonKey(name: 'school_status') final int? schoolStatus,
          @JsonKey(name: 'school_create_dt') final String? createdt}) =
      _$SchoolListImpl;

  factory _SchoolList.fromJson(Map<String, dynamic> json) =
      _$SchoolListImpl.fromJson;

  @override
  @JsonKey(name: 'school_id')
  int? get schoolId;
  @override
  @JsonKey(name: 'school_name')
  String? get schoolName;
  @override
  @JsonKey(name: 'school_location')
  String? get schoolLocation;
  @override
  @JsonKey(name: 'school_status')
  int? get schoolStatus;
  @override
  @JsonKey(name: 'school_create_dt')
  String? get createdt;
  @override
  @JsonKey(ignore: true)
  _$$SchoolListImplCopyWith<_$SchoolListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
