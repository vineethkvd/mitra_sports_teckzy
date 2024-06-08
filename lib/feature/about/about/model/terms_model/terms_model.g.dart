// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terms_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TermsModelImpl _$$TermsModelImplFromJson(Map<String, dynamic> json) =>
    _$TermsModelImpl(
      status: json['status'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      data:
          (json['Data'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
    );

Map<String, dynamic> _$$TermsModelImplToJson(_$TermsModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'Data': instance.data,
    };
