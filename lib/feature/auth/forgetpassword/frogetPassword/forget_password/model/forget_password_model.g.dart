// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forget_password_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForgetPasswordModelImpl _$$ForgetPasswordModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ForgetPasswordModelImpl(
      status: json['status'] as bool?,
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$$ForgetPasswordModelImplToJson(
        _$ForgetPasswordModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
