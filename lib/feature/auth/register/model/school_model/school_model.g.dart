// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SchoolListModelImpl _$$SchoolListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SchoolListModelImpl(
      status: json['status'] as bool?,
      message: json['message'] as String? ?? '',
      schoolList: (json['Data'] as List<dynamic>?)
              ?.map((e) => SchoolList.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SchoolListModelImplToJson(
        _$SchoolListModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'Data': instance.schoolList,
    };

_$SchoolListImpl _$$SchoolListImplFromJson(Map<String, dynamic> json) =>
    _$SchoolListImpl(
      schoolId: (json['school_id'] as num?)?.toInt() ?? 0,
      schoolName: json['school_name'] as String? ?? '',
      schoolLocation: json['school_location'] as String? ?? '',
      schoolStatus: (json['school_status'] as num?)?.toInt() ?? 0,
      createdt: json['school_create_dt'] as String? ?? '',
    );

Map<String, dynamic> _$$SchoolListImplToJson(_$SchoolListImpl instance) =>
    <String, dynamic>{
      'school_id': instance.schoolId,
      'school_name': instance.schoolName,
      'school_location': instance.schoolLocation,
      'school_status': instance.schoolStatus,
      'school_create_dt': instance.createdt,
    };
