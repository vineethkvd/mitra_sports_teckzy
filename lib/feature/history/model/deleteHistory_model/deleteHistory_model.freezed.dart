// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deleteHistory_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteHistoryModel _$DeleteHistoryModelFromJson(Map<String, dynamic> json) {
  return _DeleteHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$DeleteHistoryModel {
  @JsonKey(name: 'status')
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteHistoryModelCopyWith<DeleteHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteHistoryModelCopyWith<$Res> {
  factory $DeleteHistoryModelCopyWith(
          DeleteHistoryModel value, $Res Function(DeleteHistoryModel) then) =
      _$DeleteHistoryModelCopyWithImpl<$Res, DeleteHistoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$DeleteHistoryModelCopyWithImpl<$Res, $Val extends DeleteHistoryModel>
    implements $DeleteHistoryModelCopyWith<$Res> {
  _$DeleteHistoryModelCopyWithImpl(this._value, this._then);

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
abstract class _$$DeleteHistoryModelImplCopyWith<$Res>
    implements $DeleteHistoryModelCopyWith<$Res> {
  factory _$$DeleteHistoryModelImplCopyWith(_$DeleteHistoryModelImpl value,
          $Res Function(_$DeleteHistoryModelImpl) then) =
      __$$DeleteHistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$$DeleteHistoryModelImplCopyWithImpl<$Res>
    extends _$DeleteHistoryModelCopyWithImpl<$Res, _$DeleteHistoryModelImpl>
    implements _$$DeleteHistoryModelImplCopyWith<$Res> {
  __$$DeleteHistoryModelImplCopyWithImpl(_$DeleteHistoryModelImpl _value,
      $Res Function(_$DeleteHistoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$DeleteHistoryModelImpl(
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
class _$DeleteHistoryModelImpl implements _DeleteHistoryModel {
  const _$DeleteHistoryModelImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message = ''});

  factory _$DeleteHistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteHistoryModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final bool? status;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'DeleteHistoryModel(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteHistoryModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteHistoryModelImplCopyWith<_$DeleteHistoryModelImpl> get copyWith =>
      __$$DeleteHistoryModelImplCopyWithImpl<_$DeleteHistoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteHistoryModelImplToJson(
      this,
    );
  }
}

abstract class _DeleteHistoryModel implements DeleteHistoryModel {
  const factory _DeleteHistoryModel(
          {@JsonKey(name: 'status') final bool? status,
          @JsonKey(name: 'message') final String? message}) =
      _$DeleteHistoryModelImpl;

  factory _DeleteHistoryModel.fromJson(Map<String, dynamic> json) =
      _$DeleteHistoryModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  bool? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$DeleteHistoryModelImplCopyWith<_$DeleteHistoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
