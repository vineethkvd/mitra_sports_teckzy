// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about_us_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AboutUsModelImpl _$$AboutUsModelImplFromJson(Map<String, dynamic> json) =>
    _$AboutUsModelImpl(
      status: json['status'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      data:
          (json['Data'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
    );

Map<String, dynamic> _$$AboutUsModelImplToJson(_$AboutUsModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'Data': instance.data,
    };
