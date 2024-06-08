import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'privacy_policy_model.freezed.dart';
part 'privacy_policy_model.g.dart';

PrivacyPolicyModel privacyPolicyModelFromJson(String str) =>
    PrivacyPolicyModel.fromJson(json.decode(str));

String privacyPolicyModelToJson(PrivacyPolicyModel data) =>
    json.encode(data.toJson());

@freezed
class PrivacyPolicyModel with _$PrivacyPolicyModel {
  const factory PrivacyPolicyModel({
    @JsonKey(name: 'status') @Default(false) bool? status,
    @JsonKey(name: 'message') @Default('') String? message,
    @JsonKey(name: 'Data') @Default([]) List<String>? data,
  }) = _PrivacyPolicyModel;

  factory PrivacyPolicyModel.fromJson(Map<String, dynamic> json) =>
      _$PrivacyPolicyModelFromJson(json);
}
