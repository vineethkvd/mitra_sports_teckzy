import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    @JsonKey(name: 'status') bool? status,
    @JsonKey(name: 'message') @Default('') String? message,
    @JsonKey(name: 'data') Data? data,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: 'user_id') @Default(0) int? userId,
    @JsonKey(name: 'user_uniq_id') @Default('') String? userUniqId,
    @JsonKey(name: 'user_name') @Default('') String? userName,
    @JsonKey(name: 'user_email') @Default('') String? userEmail,
    @JsonKey(name: 'user_mobile') @Default('') String? userMobile,
    @JsonKey(name: 'school_name') @Default('') String? userSchool,
    @JsonKey(name: 'profile_pic') @Default('') String? profilePic,
    @JsonKey(name: 'trainer_name') @Default('') String? trainerName,
    @JsonKey(name: 'district_name') @Default('') String? district,
    @JsonKey(name: 'age_in_months') @Default('') String? userAge,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
