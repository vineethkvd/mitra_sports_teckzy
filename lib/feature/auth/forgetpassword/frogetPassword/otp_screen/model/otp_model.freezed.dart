// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OtpModel _$OtpModelFromJson(Map<String, dynamic> json) {
  return _OtpModel.fromJson(json);
}

/// @nodoc
mixin _$OtpModel {
  @JsonKey(name: "status")
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtpModelCopyWith<OtpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpModelCopyWith<$Res> {
  factory $OtpModelCopyWith(OtpModel value, $Res Function(OtpModel) then) =
      _$OtpModelCopyWithImpl<$Res, OtpModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool? status,
      @JsonKey(name: "message") String? message});
}

/// @nodoc
class _$OtpModelCopyWithImpl<$Res, $Val extends OtpModel>
    implements $OtpModelCopyWith<$Res> {
  _$OtpModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtpModelImplCopyWith<$Res>
    implements $OtpModelCopyWith<$Res> {
  factory _$$OtpModelImplCopyWith(
          _$OtpModelImpl value, $Res Function(_$OtpModelImpl) then) =
      __$$OtpModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool? status,
      @JsonKey(name: "message") String? message});
}

/// @nodoc
class __$$OtpModelImplCopyWithImpl<$Res>
    extends _$OtpModelCopyWithImpl<$Res, _$OtpModelImpl>
    implements _$$OtpModelImplCopyWith<$Res> {
  __$$OtpModelImplCopyWithImpl(
      _$OtpModelImpl _value, $Res Function(_$OtpModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$OtpModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OtpModelImpl implements _OtpModel {
  const _$OtpModelImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "message") this.message = ''});

  factory _$OtpModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtpModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final bool? status;
  @override
  @JsonKey(name: "message")
  final String? message;

  @override
  String toString() {
    return 'OtpModel(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpModelImplCopyWith<_$OtpModelImpl> get copyWith =>
      __$$OtpModelImplCopyWithImpl<_$OtpModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtpModelImplToJson(
      this,
    );
  }
}

abstract class _OtpModel implements OtpModel {
  const factory _OtpModel(
      {@JsonKey(name: "status") final bool? status,
      @JsonKey(name: "message") final String? message}) = _$OtpModelImpl;

  factory _OtpModel.fromJson(Map<String, dynamic> json) =
      _$OtpModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  bool? get status;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$OtpModelImplCopyWith<_$OtpModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
