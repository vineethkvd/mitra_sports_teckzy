// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trainer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrainerListModelImpl _$$TrainerListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TrainerListModelImpl(
      status: json['status'] as String? ?? '',
      message: json['message'] as String? ?? '',
      trainerList: (json['Data'] as List<dynamic>?)
              ?.map((e) => TrainerList.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TrainerListModelImplToJson(
        _$TrainerListModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'Data': instance.trainerList,
    };

_$TrainerListImpl _$$TrainerListImplFromJson(Map<String, dynamic> json) =>
    _$TrainerListImpl(
      trainerId: (json['trainer_id'] as num?)?.toInt() ?? 0,
      trainerName: json['trainer_name'] as String? ?? '',
    );

Map<String, dynamic> _$$TrainerListImplToJson(_$TrainerListImpl instance) =>
    <String, dynamic>{
      'trainer_id': instance.trainerId,
      'trainer_name': instance.trainerName,
    };
