import 'package:freezed_annotation/freezed_annotation.dart';

part 'forget_password_model.freezed.dart';
part 'forget_password_model.g.dart';

@freezed
class ForgetPasswordModel with _$ForgetPasswordModel {
  const factory ForgetPasswordModel({
    @JsonKey(name: "status") bool? status,
    @JsonKey(name: "message") @Default('') String? message,
  }) = _ForgetPasswordModel;

  factory ForgetPasswordModel.fromJson(Map<String, dynamic> json) =>
      _$ForgetPasswordModelFromJson(json);
}
