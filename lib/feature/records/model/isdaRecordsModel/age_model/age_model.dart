import 'package:freezed_annotation/freezed_annotation.dart';

part 'age_model.freezed.dart';
part 'age_model.g.dart';

@freezed
class AgeModel with _$AgeModel {
  const factory AgeModel({
    @JsonKey(name: 'status') @Default(false) bool? status,
    @JsonKey(name: 'message') @Default('') String? message,
    @JsonKey(name: 'Data') @Default([]) List<Data>? data,
  }) = _AgeModel;

  factory AgeModel.fromJson(Map<String, dynamic> json) =>
      _$AgeModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: 'age_id') @Default(0) int? ageId,
    @JsonKey(name: "min_age") @Default(0) int? minAge,
    @JsonKey(name: "max_age") @Default(0) int? maxAge,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
