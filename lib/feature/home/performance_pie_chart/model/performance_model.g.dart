// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'performance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PerformanceModelImpl _$$PerformanceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PerformanceModelImpl(
      status: json['status'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      data: json['data'] == null
          ? null
          : GraphData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PerformanceModelImplToJson(
        _$PerformanceModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      totalGamesPlayed: (json['total_games_played'] as num?)?.toInt() ?? 0,
      gamesData: (json['games_data'] as List<dynamic>?)
              ?.map((e) => GamesData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'total_games_played': instance.totalGamesPlayed,
      'games_data': instance.gamesData,
    };

_$GamesDataImpl _$$GamesDataImplFromJson(Map<String, dynamic> json) =>
    _$GamesDataImpl(
      gameTypeId: (json['game_type_id'] as num?)?.toInt() ?? 0,
      gameTypeName: json['game_type_name'] as String? ?? '',
      gamesPlayed: (json['games_played'] as num?)?.toInt() ?? 0,
      bestRecords: json['best_records'] as String? ?? '',
    );

Map<String, dynamic> _$$GamesDataImplToJson(_$GamesDataImpl instance) =>
    <String, dynamic>{
      'game_type_id': instance.gameTypeId,
      'game_type_name': instance.gameTypeName,
      'games_played': instance.gamesPlayed,
      'best_records': instance.bestRecords,
    };
