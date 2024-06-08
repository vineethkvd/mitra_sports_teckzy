// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileModelImpl _$$ProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModelImpl(
      status: json['status'] as bool?,
      message: json['message'] as String? ?? '',
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProfileModelImplToJson(_$ProfileModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      userId: (json['user_id'] as num?)?.toInt() ?? 0,
      userUniqId: json['user_uniq_id'] as String? ?? '',
      userName: json['user_name'] as String? ?? '',
      userEmail: json['user_email'] as String? ?? '',
      userMobile: json['user_mobile'] as String? ?? '',
      userSchool: json['school_name'] as String? ?? '',
      profilePic: json['profile_pic'] as String? ?? '',
      trainerName: json['trainer_name'] as String? ?? '',
      district: json['district_name'] as String? ?? '',
      userAge: json['age_in_months'] as String? ?? '',
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'user_uniq_id': instance.userUniqId,
      'user_name': instance.userName,
      'user_email': instance.userEmail,
      'user_mobile': instance.userMobile,
      'school_name': instance.userSchool,
      'profile_pic': instance.profilePic,
      'trainer_name': instance.trainerName,
      'district_name': instance.district,
      'age_in_months': instance.userAge,
    };
