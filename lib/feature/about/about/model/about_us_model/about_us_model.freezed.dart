// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'about_us_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AboutUsModel _$AboutUsModelFromJson(Map<String, dynamic> json) {
  return _AboutUsModel.fromJson(json);
}

/// @nodoc
mixin _$AboutUsModel {
  @JsonKey(name: 'status')
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'Data')
  List<String>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AboutUsModelCopyWith<AboutUsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutUsModelCopyWith<$Res> {
  factory $AboutUsModelCopyWith(
          AboutUsModel value, $Res Function(AboutUsModel) then) =
      _$AboutUsModelCopyWithImpl<$Res, AboutUsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'Data') List<String>? data});
}

/// @nodoc
class _$AboutUsModelCopyWithImpl<$Res, $Val extends AboutUsModel>
    implements $AboutUsModelCopyWith<$Res> {
  _$AboutUsModelCopyWithImpl(this._value, this._then);

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
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AboutUsModelImplCopyWith<$Res>
    implements $AboutUsModelCopyWith<$Res> {
  factory _$$AboutUsModelImplCopyWith(
          _$AboutUsModelImpl value, $Res Function(_$AboutUsModelImpl) then) =
      __$$AboutUsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'Data') List<String>? data});
}

/// @nodoc
class __$$AboutUsModelImplCopyWithImpl<$Res>
    extends _$AboutUsModelCopyWithImpl<$Res, _$AboutUsModelImpl>
    implements _$$AboutUsModelImplCopyWith<$Res> {
  __$$AboutUsModelImplCopyWithImpl(
      _$AboutUsModelImpl _value, $Res Function(_$AboutUsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AboutUsModelImpl(
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
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AboutUsModelImpl implements _AboutUsModel {
  const _$AboutUsModelImpl(
      {@JsonKey(name: 'status') this.status = false,
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'Data') final List<String>? data = const []})
      : _data = data;

  factory _$AboutUsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AboutUsModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final bool? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<String>? _data;
  @override
  @JsonKey(name: 'Data')
  List<String>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AboutUsModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AboutUsModelImpl &&
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
  _$$AboutUsModelImplCopyWith<_$AboutUsModelImpl> get copyWith =>
      __$$AboutUsModelImplCopyWithImpl<_$AboutUsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AboutUsModelImplToJson(
      this,
    );
  }
}

abstract class _AboutUsModel implements AboutUsModel {
  const factory _AboutUsModel(
      {@JsonKey(name: 'status') final bool? status,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'Data') final List<String>? data}) = _$AboutUsModelImpl;

  factory _AboutUsModel.fromJson(Map<String, dynamic> json) =
      _$AboutUsModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  bool? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'Data')
  List<String>? get data;
  @override
  @JsonKey(ignore: true)
  _$$AboutUsModelImplCopyWith<_$AboutUsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
