// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'learn_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LearnModelImpl _$$LearnModelImplFromJson(Map<String, dynamic> json) =>
    _$LearnModelImpl(
      status: json['status'] as String? ?? '',
      message: json['message'] as String? ?? '',
      data: (json['Data'] as List<dynamic>?)
              ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$LearnModelImplToJson(_$LearnModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'Data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      tutorialWebId: (json['tutorial_web_id'] as num?)?.toInt() ?? 0,
      tutorialWebName: json['tutorial_web_name'] as String? ?? '',
      videoweb: json['video_web'] as String? ?? '',
      tutorialSourceFile: json['tutorial_source_file'] as String? ?? '',
      tutorialWebDetails: json['tutorial_web_details'] as String? ?? '',
      tutorialWebCreated: json['tutorial_web_created'] as String? ?? '',
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'tutorial_web_id': instance.tutorialWebId,
      'tutorial_web_name': instance.tutorialWebName,
      'video_web': instance.videoweb,
      'tutorial_source_file': instance.tutorialSourceFile,
      'tutorial_web_details': instance.tutorialWebDetails,
      'tutorial_web_created': instance.tutorialWebCreated,
    };
