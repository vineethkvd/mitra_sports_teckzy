import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_model.freezed.dart';
part 'otp_model.g.dart';

@freezed
class OtpModel with _$OtpModel {
  const factory OtpModel({
    @JsonKey(name: "status") bool? status,
    @JsonKey(name: "message") @Default('') String? message,
  }) = _OtpModel;

  factory OtpModel.fromJson(Map<String, dynamic> json) =>
      _$OtpModelFromJson(json);
}
