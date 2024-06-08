// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimerModelImpl _$$TimerModelImplFromJson(Map<String, dynamic> json) =>
    _$TimerModelImpl(
      status: json['status'] as bool? ?? false,
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$$TimerModelImplToJson(_$TimerModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
