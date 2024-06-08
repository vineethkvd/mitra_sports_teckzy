// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StateModelListImpl _$$StateModelListImplFromJson(Map<String, dynamic> json) =>
    _$StateModelListImpl(
      status: json['status'] as String? ?? '',
      message: json['message'] as String? ?? '',
      stateList: (json['Data'] as List<dynamic>?)
              ?.map((e) => StateList.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$StateModelListImplToJson(
        _$StateModelListImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'Data': instance.stateList,
    };

_$StateListImpl _$$StateListImplFromJson(Map<String, dynamic> json) =>
    _$StateListImpl(
      stateId: (json['state_id'] as num?)?.toInt() ?? 0,
      stateName: json['state_name'] as String? ?? '',
      countryId: (json['country_id'] as num?)?.toInt() ?? 0,
      status: (json['status'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$StateListImplToJson(_$StateListImpl instance) =>
    <String, dynamic>{
      'state_id': instance.stateId,
      'state_name': instance.stateName,
      'country_id': instance.countryId,
      'status': instance.status,
    };
