// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gameType_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameTypeModelImpl _$$GameTypeModelImplFromJson(Map<String, dynamic> json) =>
    _$GameTypeModelImpl(
      status: json['status'] as bool?,
      message: json['message'] as String? ?? '',
      gameList: (json['Data'] as List<dynamic>?)
              ?.map((e) => GameList.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$GameTypeModelImplToJson(_$GameTypeModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'Data': instance.gameList,
    };

_$GameListImpl _$$GameListImplFromJson(Map<String, dynamic> json) =>
    _$GameListImpl(
      gameTypeId: (json['game_type_id'] as num?)?.toInt() ?? 0,
      gameName: json['game_type_name'] as String? ?? '',
      gameImage: json['game_type_img'] as String? ?? '',
      createdDate: json['game_type_createed_dt'] as String? ?? '',
    );

Map<String, dynamic> _$$GameListImplToJson(_$GameListImpl instance) =>
    <String, dynamic>{
      'game_type_id': instance.gameTypeId,
      'game_type_name': instance.gameName,
      'game_type_img': instance.gameImage,
      'game_type_createed_dt': instance.createdDate,
    };
