import 'package:freezed_annotation/freezed_annotation.dart';
part 'isda_model.freezed.dart';
part 'isda_model.g.dart';

@freezed
class IsdaModel with _$IsdaModel {
  const factory IsdaModel({
    @JsonKey(name: "status") @Default('') String? status,
    @JsonKey(name: 'message') @Default('') String? message,
    @JsonKey(name: 'Data') @Default([]) List<Data>? data,
  }) = _IsdaModel;

  factory IsdaModel.fromJson(Map<String, dynamic> json) =>
      _$IsdaModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "record_id") @Default(0) int? recordId,
    @JsonKey(name: "name") @Default('') String? name,
    @JsonKey(name: "gender_id") @Default(0) int? genderId,
    @JsonKey(name: "age") @Default(0) int? age,
    @JsonKey(name: "game_type_id") @Default(0) int? gameTypeId,
    @JsonKey(name: "game_timing") @Default('') String? gameTiming,
    @JsonKey(name: "crtd_at") @Default('') String? crtdAt,
    @JsonKey(name: "gender_name") @Default('') String? genderName,
    @JsonKey(name: "game_type_name") @Default('') String? gameTypeName,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
