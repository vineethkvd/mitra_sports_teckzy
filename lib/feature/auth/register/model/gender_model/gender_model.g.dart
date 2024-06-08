// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gender_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GenderListModelImpl _$$GenderListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GenderListModelImpl(
      status: json['status'] as bool?,
      message: json['message'] as String? ?? '',
      genderList: (json['Data'] as List<dynamic>?)
              ?.map((e) => GenderList.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$GenderListModelImplToJson(
        _$GenderListModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'Data': instance.genderList,
    };

_$GenderListImpl _$$GenderListImplFromJson(Map<String, dynamic> json) =>
    _$GenderListImpl(
      genderId: (json['gender_id'] as num?)?.toInt() ?? 0,
      genderName: json['gender_name'] as String? ?? '',
    );

Map<String, dynamic> _$$GenderListImplToJson(_$GenderListImpl instance) =>
    <String, dynamic>{
      'gender_id': instance.genderId,
      'gender_name': instance.genderName,
    };
