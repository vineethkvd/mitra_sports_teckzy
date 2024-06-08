// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'district_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$districtModelListImpl _$$districtModelListImplFromJson(
        Map<String, dynamic> json) =>
    _$districtModelListImpl(
      status: json['status'] as String? ?? '',
      message: json['message'] as String? ?? '',
      districtList: (json['Data'] as List<dynamic>?)
              ?.map((e) => DistrictList.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$districtModelListImplToJson(
        _$districtModelListImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'Data': instance.districtList,
    };

_$districtListImpl _$$districtListImplFromJson(Map<String, dynamic> json) =>
    _$districtListImpl(
      districtId: (json['district_id'] as num?)?.toInt() ?? 0,
      districtName: json['district_name'] as String? ?? '',
      stateId: (json['state_id'] as num?)?.toInt() ?? 0,
      status: (json['status'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$districtListImplToJson(_$districtListImpl instance) =>
    <String, dynamic>{
      'district_id': instance.districtId,
      'district_name': instance.districtName,
      'state_id': instance.stateId,
      'status': instance.status,
    };
