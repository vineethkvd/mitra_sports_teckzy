// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gametype_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameTypeModelImpl _$$GameTypeModelImplFromJson(Map<String, dynamic> json) =>
    _$GameTypeModelImpl(
      status: json['status'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      data: (json['Data'] as List<dynamic>?)
              ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$GameTypeModelImplToJson(_$GameTypeModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'Data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      gameTypeId: (json['game_type_id'] as num?)?.toInt() ?? 0,
      gameTypeName: json['game_type_name'] as String? ?? '',
      gameTypeImg: json['game_type_img'] as String? ?? '',
      gameTypeCreateedDt: json['game_type_createed_dt'] as String? ?? '',
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'game_type_id': instance.gameTypeId,
      'game_type_name': instance.gameTypeName,
      'game_type_img': instance.gameTypeImg,
      'game_type_createed_dt': instance.gameTypeCreateedDt,
    };
