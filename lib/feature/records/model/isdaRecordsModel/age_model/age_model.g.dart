// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'age_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AgeModelImpl _$$AgeModelImplFromJson(Map<String, dynamic> json) =>
    _$AgeModelImpl(
      status: json['status'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      data: (json['Data'] as List<dynamic>?)
              ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$AgeModelImplToJson(_$AgeModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'Data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      ageId: (json['age_id'] as num?)?.toInt() ?? 0,
      minAge: (json['min_age'] as num?)?.toInt() ?? 0,
      maxAge: (json['max_age'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'age_id': instance.ageId,
      'min_age': instance.minAge,
      'max_age': instance.maxAge,
    };
