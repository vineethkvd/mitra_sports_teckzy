import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'terms_model.freezed.dart';
part 'terms_model.g.dart';

TermsModel termsModelFromJson(String str) =>
    TermsModel.fromJson(json.decode(str));

String termsModelToJson(TermsModel data) => json.encode(data.toJson());

@freezed
class TermsModel with _$TermsModel {
  const factory TermsModel({
    @JsonKey(name: 'status') @Default(false) bool? status,
    @JsonKey(name: 'message') @Default('') String? message,
    @JsonKey(name: 'Data') @Default([]) List<String>? data,
  }) = _TermsModel;

  factory TermsModel.fromJson(Map<String, dynamic> json) =>
      _$TermsModelFromJson(json);
}
