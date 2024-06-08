// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editProfile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditProfileModelImpl _$$EditProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EditProfileModelImpl(
      status: json['status'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      profilePicUrl: json['profile_pic_url'] as String? ?? '',
    );

Map<String, dynamic> _$$EditProfileModelImplToJson(
        _$EditProfileModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'profile_pic_url': instance.profilePicUrl,
    };
