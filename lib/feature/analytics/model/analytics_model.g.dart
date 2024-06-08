// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnalyticsModelImpl _$$AnalyticsModelImplFromJson(Map<String, dynamic> json) =>
    _$AnalyticsModelImpl(
      status: json['status'] as bool?,
      message: json['message'] as String? ?? '',
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$AnalyticsModelImplToJson(
        _$AnalyticsModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      gameTypeId: (json['game_type_id'] as num?)?.toInt() ?? 0,
      gameTypeName: json['game_type_name'] as String? ?? '',
      gamesPlayed: (json['games_played'] as num?)?.toInt() ?? 0,
      bestRecords: json['min_time'] as String? ?? '',
      createdDt: json['created_dt'] as String? ?? '0',
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'game_type_id': instance.gameTypeId,
      'game_type_name': instance.gameTypeName,
      'games_played': instance.gamesPlayed,
      'min_time': instance.bestRecords,
      'created_dt': instance.createdDt,
    };
