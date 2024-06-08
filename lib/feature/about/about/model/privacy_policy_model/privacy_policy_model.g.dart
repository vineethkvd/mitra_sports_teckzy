// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'privacy_policy_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrivacyPolicyModelImpl _$$PrivacyPolicyModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PrivacyPolicyModelImpl(
      status: json['status'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      data:
          (json['Data'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
    );

Map<String, dynamic> _$$PrivacyPolicyModelImplToJson(
        _$PrivacyPolicyModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'Data': instance.data,
    };
