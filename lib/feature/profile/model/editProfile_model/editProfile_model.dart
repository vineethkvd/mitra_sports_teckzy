import 'package:freezed_annotation/freezed_annotation.dart';

part 'editProfile_model.freezed.dart';
part 'editProfile_model.g.dart';

@freezed
class EditProfileModel with _$EditProfileModel {
  const factory EditProfileModel({
    @JsonKey(name: 'status') @Default(false) bool? status,
    @JsonKey(name: 'message') @Default('') String? message,
    @JsonKey(name: 'profile_pic_url') @Default('') String? profilePicUrl,
  }) = _EditProfileModel;

  factory EditProfileModel.fromJson(Map<String, dynamic> json) =>
      _$EditProfileModelFromJson(json);
}
