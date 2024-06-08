// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slider_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SlidersModelImpl _$$SlidersModelImplFromJson(Map<String, dynamic> json) =>
    _$SlidersModelImpl(
      status: json['status'] as String? ?? '',
      message: json['message'] as String? ?? '',
      data: (json['Data'] as List<dynamic>?)
              ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SlidersModelImplToJson(_$SlidersModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'Data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      imageId: (json['image_id:'] as num?)?.toInt() ?? 0,
      imagesName: json['images_name'] as String? ?? '',
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'image_id:': instance.imageId,
      'images_name': instance.imagesName,
    };
