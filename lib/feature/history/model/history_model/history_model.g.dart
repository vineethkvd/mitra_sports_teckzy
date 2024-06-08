// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$historyModelImpl _$$historyModelImplFromJson(Map<String, dynamic> json) =>
    _$historyModelImpl(
      status: json['status'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      historyList: (json['data'] as List<dynamic>?)
              ?.map((e) => HistoryList.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$historyModelImplToJson(_$historyModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.historyList,
    };

_$historyListImpl _$$historyListImplFromJson(Map<String, dynamic> json) =>
    _$historyListImpl(
      recordId: (json['record_id'] as num?)?.toInt() ?? 0,
      gameId: (json['game_id'] as num?)?.toInt() ?? 0,
      startTime: json['start_time'] as String? ?? '',
      endTime: json['end_time'] as String? ?? '',
      totalTime: json['total_time'] as String? ?? '',
      createdDate: json['created_dt'] as String? ?? '',
      userName: json['user_name'] as String? ?? '',
      userId: (json['user_id'] as num?)?.toInt() ?? 0,
      gameType: json['game_type_name'] as String? ?? '',
    );

Map<String, dynamic> _$$historyListImplToJson(_$historyListImpl instance) =>
    <String, dynamic>{
      'record_id': instance.recordId,
      'game_id': instance.gameId,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'total_time': instance.totalTime,
      'created_dt': instance.createdDate,
      'user_name': instance.userName,
      'user_id': instance.userId,
      'game_type_name': instance.gameType,
    };
