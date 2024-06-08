// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forget_password_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForgetPasswordModel _$ForgetPasswordModelFromJson(Map<String, dynamic> json) {
  return _ForgetPasswordModel.fromJson(json);
}

/// @nodoc
mixin _$ForgetPasswordModel {
  @JsonKey(name: "status")
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgetPasswordModelCopyWith<ForgetPasswordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgetPasswordModelCopyWith<$Res> {
  factory $ForgetPasswordModelCopyWith(
          ForgetPasswordModel value, $Res Function(ForgetPasswordModel) then) =
      _$ForgetPasswordModelCopyWithImpl<$Res, ForgetPasswordModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool? status,
      @JsonKey(name: "message") String? message});
}

/// @nodoc
class _$ForgetPasswordModelCopyWithImpl<$Res, $Val extends ForgetPasswordModel>
    implements $ForgetPasswordModelCopyWith<$Res> {
  _$ForgetPasswordModelCopyWithImpl(this._value, this._then);

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
abstract class _$$ForgetPasswordModelImplCopyWith<$Res>
    implements $ForgetPasswordModelCopyWith<$Res> {
  factory _$$ForgetPasswordModelImplCopyWith(_$ForgetPasswordModelImpl value,
          $Res Function(_$ForgetPasswordModelImpl) then) =
      __$$ForgetPasswordModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool? status,
      @JsonKey(name: "message") String? message});
}

/// @nodoc
class __$$ForgetPasswordModelImplCopyWithImpl<$Res>
    extends _$ForgetPasswordModelCopyWithImpl<$Res, _$ForgetPasswordModelImpl>
    implements _$$ForgetPasswordModelImplCopyWith<$Res> {
  __$$ForgetPasswordModelImplCopyWithImpl(_$ForgetPasswordModelImpl _value,
      $Res Function(_$ForgetPasswordModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ForgetPasswordModelImpl(
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
class _$ForgetPasswordModelImpl implements _ForgetPasswordModel {
  const _$ForgetPasswordModelImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "message") this.message = ''});

  factory _$ForgetPasswordModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForgetPasswordModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final bool? status;
  @override
  @JsonKey(name: "message")
  final String? message;

  @override
  String toString() {
    return 'ForgetPasswordModel(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgetPasswordModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgetPasswordModelImplCopyWith<_$ForgetPasswordModelImpl> get copyWith =>
      __$$ForgetPasswordModelImplCopyWithImpl<_$ForgetPasswordModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForgetPasswordModelImplToJson(
      this,
    );
  }
}

abstract class _ForgetPasswordModel implements ForgetPasswordModel {
  const factory _ForgetPasswordModel(
          {@JsonKey(name: "status") final bool? status,
          @JsonKey(name: "message") final String? message}) =
      _$ForgetPasswordModelImpl;

  factory _ForgetPasswordModel.fromJson(Map<String, dynamic> json) =
      _$ForgetPasswordModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  bool? get status;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ForgetPasswordModelImplCopyWith<_$ForgetPasswordModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
