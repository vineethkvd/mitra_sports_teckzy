// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tournament_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TournamentModelImpl _$$TournamentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TournamentModelImpl(
      status: json['status'] as String? ?? '',
      message: json['message'] as String? ?? '',
      data: (json['Data'] as List<dynamic>?)
              ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TournamentModelImplToJson(
        _$TournamentModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'Data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      tournId: (json['tourn_id'] as num?)?.toInt() ?? 0,
      tournType: json['tourn_type'] as String? ?? '',
      gameType: json['game_type'] as String? ?? '',
      gameName: json['game_type_name'] as String? ?? '',
      tournName: json['tourn_name'] as String? ?? '',
      tournImage: json['tourn_image'] as String? ?? '',
      tournUrl: json['tourn_url'] as String? ?? '',
      tournDetails: json['tourn_details'] as String? ?? '',
      tournDate: json['tourn_date'] as String? ?? '',
      tournTime: json['tourn_time'] as String? ?? '',
      tournCreated: json['tourn_created'] as String? ?? '',
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'tourn_id': instance.tournId,
      'tourn_type': instance.tournType,
      'game_type': instance.gameType,
      'game_type_name': instance.gameName,
      'tourn_name': instance.tournName,
      'tourn_image': instance.tournImage,
      'tourn_url': instance.tournUrl,
      'tourn_details': instance.tournDetails,
      'tourn_date': instance.tournDate,
      'tourn_time': instance.tournTime,
      'tourn_created': instance.tournCreated,
    };
