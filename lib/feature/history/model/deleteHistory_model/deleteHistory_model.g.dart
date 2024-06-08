// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deleteHistory_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeleteHistoryModelImpl _$$DeleteHistoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DeleteHistoryModelImpl(
      status: json['status'] as bool?,
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$$DeleteHistoryModelImplToJson(
        _$DeleteHistoryModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
