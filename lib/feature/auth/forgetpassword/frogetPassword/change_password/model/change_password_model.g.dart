// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChangePasswordModelImpl _$$ChangePasswordModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangePasswordModelImpl(
      status: json['status'] as bool?,
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$$ChangePasswordModelImplToJson(
        _$ChangePasswordModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
