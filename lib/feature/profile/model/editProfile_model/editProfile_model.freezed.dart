// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'editProfile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EditProfileModel _$EditProfileModelFromJson(Map<String, dynamic> json) {
  return _EditProfileModel.fromJson(json);
}

/// @nodoc
mixin _$EditProfileModel {
  @JsonKey(name: 'status')
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_pic_url')
  String? get profilePicUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditProfileModelCopyWith<EditProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileModelCopyWith<$Res> {
  factory $EditProfileModelCopyWith(
          EditProfileModel value, $Res Function(EditProfileModel) then) =
      _$EditProfileModelCopyWithImpl<$Res, EditProfileModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'profile_pic_url') String? profilePicUrl});
}

/// @nodoc
class _$EditProfileModelCopyWithImpl<$Res, $Val extends EditProfileModel>
    implements $EditProfileModelCopyWith<$Res> {
  _$EditProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? profilePicUrl = freezed,
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
      profilePicUrl: freezed == profilePicUrl
          ? _value.profilePicUrl
          : profilePicUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditProfileModelImplCopyWith<$Res>
    implements $EditProfileModelCopyWith<$Res> {
  factory _$$EditProfileModelImplCopyWith(_$EditProfileModelImpl value,
          $Res Function(_$EditProfileModelImpl) then) =
      __$$EditProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'profile_pic_url') String? profilePicUrl});
}

/// @nodoc
class __$$EditProfileModelImplCopyWithImpl<$Res>
    extends _$EditProfileModelCopyWithImpl<$Res, _$EditProfileModelImpl>
    implements _$$EditProfileModelImplCopyWith<$Res> {
  __$$EditProfileModelImplCopyWithImpl(_$EditProfileModelImpl _value,
      $Res Function(_$EditProfileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? profilePicUrl = freezed,
  }) {
    return _then(_$EditProfileModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicUrl: freezed == profilePicUrl
          ? _value.profilePicUrl
          : profilePicUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditProfileModelImpl implements _EditProfileModel {
  const _$EditProfileModelImpl(
      {@JsonKey(name: 'status') this.status = false,
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'profile_pic_url') this.profilePicUrl = ''});

  factory _$EditProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditProfileModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final bool? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'profile_pic_url')
  final String? profilePicUrl;

  @override
  String toString() {
    return 'EditProfileModel(status: $status, message: $message, profilePicUrl: $profilePicUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.profilePicUrl, profilePicUrl) ||
                other.profilePicUrl == profilePicUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, profilePicUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileModelImplCopyWith<_$EditProfileModelImpl> get copyWith =>
      __$$EditProfileModelImplCopyWithImpl<_$EditProfileModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditProfileModelImplToJson(
      this,
    );
  }
}

abstract class _EditProfileModel implements EditProfileModel {
  const factory _EditProfileModel(
          {@JsonKey(name: 'status') final bool? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'profile_pic_url') final String? profilePicUrl}) =
      _$EditProfileModelImpl;

  factory _EditProfileModel.fromJson(Map<String, dynamic> json) =
      _$EditProfileModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  bool? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'profile_pic_url')
  String? get profilePicUrl;
  @override
  @JsonKey(ignore: true)
  _$$EditProfileModelImplCopyWith<_$EditProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
