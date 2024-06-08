// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isda_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IsdaModelImpl _$$IsdaModelImplFromJson(Map<String, dynamic> json) =>
    _$IsdaModelImpl(
      status: json['status'] as String? ?? '',
      message: json['message'] as String? ?? '',
      data: (json['Data'] as List<dynamic>?)
              ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$IsdaModelImplToJson(_$IsdaModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'Data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      recordId: (json['record_id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      genderId: (json['gender_id'] as num?)?.toInt() ?? 0,
      age: (json['age'] as num?)?.toInt() ?? 0,
      gameTypeId: (json['game_type_id'] as num?)?.toInt() ?? 0,
      gameTiming: json['game_timing'] as String? ?? '',
      crtdAt: json['crtd_at'] as String? ?? '',
      genderName: json['gender_name'] as String? ?? '',
      gameTypeName: json['game_type_name'] as String? ?? '',
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'record_id': instance.recordId,
      'name': instance.name,
      'gender_id': instance.genderId,
      'age': instance.age,
      'game_type_id': instance.gameTypeId,
      'game_timing': instance.gameTiming,
      'crtd_at': instance.crtdAt,
      'gender_name': instance.genderName,
      'game_type_name': instance.gameTypeName,
    };
