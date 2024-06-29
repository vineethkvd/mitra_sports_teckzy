// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnalyticsModelImpl _$$AnalyticsModelImplFromJson(Map<String, dynamic> json) =>
    _$AnalyticsModelImpl(
      status: json['status'] as bool?,
      message: json['message'] as String? ?? '',
      data: json['data'] == null
          ? const Data()
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AnalyticsModelImplToJson(
        _$AnalyticsModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      daily: (json['daily'] as List<dynamic>?)
              ?.map((e) => Daily.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      weekly: (json['weekly'] as List<dynamic>?)
              ?.map((e) => Daily.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      monthly: (json['monthly'] as List<dynamic>?)
              ?.map((e) => Daily.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'daily': instance.daily,
      'weekly': instance.weekly,
      'monthly': instance.monthly,
    };

_$DailyImpl _$$DailyImplFromJson(Map<String, dynamic> json) => _$DailyImpl(
      gameTypeId: (json['game_type_id'] as num?)?.toInt() ?? 0,
      gameTypeName: json['game_type_name'] as String? ?? '',
      gamesPlayed: (json['games_played'] as num?)?.toInt() ?? 0,
      minTime: json['min_time'] as String? ?? '',
      minTimeDate: json['min_time_date'] as String? ?? '',
      overallGamesPlayed: (json['overall_games_played'] as num?)?.toInt() ?? 0,
      overallMinTime: json['overall_min_time'] as String? ?? '',
      overallMinTimeDate: json['overall_min_time_date'] as String? ?? '',
    );

Map<String, dynamic> _$$DailyImplToJson(_$DailyImpl instance) =>
    <String, dynamic>{
      'game_type_id': instance.gameTypeId,
      'game_type_name': instance.gameTypeName,
      'games_played': instance.gamesPlayed,
      'min_time': instance.minTime,
      'min_time_date': instance.minTimeDate,
      'overall_games_played': instance.overallGamesPlayed,
      'overall_min_time': instance.overallMinTime,
      'overall_min_time_date': instance.overallMinTimeDate,
    };
