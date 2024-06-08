// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'records_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$recordsModelImpl _$$recordsModelImplFromJson(Map<String, dynamic> json) =>
    _$recordsModelImpl(
      status: json['status'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      recordList: (json['data'] as List<dynamic>?)
              ?.map((e) => RecordList.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$recordsModelImplToJson(_$recordsModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.recordList,
    };

_$recordListImpl _$$recordListImplFromJson(Map<String, dynamic> json) =>
    _$recordListImpl(
      recordId: (json['record_id'] as num?)?.toInt() ?? 0,
      userId: (json['user_id'] as num?)?.toInt() ?? 0,
      gameId: (json['game_id'] as num?)?.toInt() ?? 0,
      startTime: json['start_time'] as String? ?? '',
      endTime: json['end_time'] as String? ?? '',
      totalTime: json['total_time'] as String? ?? '',
      createdDate: json['created_dt'] as String? ?? '',
      gameTypeName: json['game_type_name'] as String? ?? '',
    );

Map<String, dynamic> _$$recordListImplToJson(_$recordListImpl instance) =>
    <String, dynamic>{
      'record_id': instance.recordId,
      'user_id': instance.userId,
      'game_id': instance.gameId,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'total_time': instance.totalTime,
      'created_dt': instance.createdDate,
      'game_type_name': instance.gameTypeName,
    };
