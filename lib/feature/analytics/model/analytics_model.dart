import 'package:freezed_annotation/freezed_annotation.dart';
part 'analytics_model.freezed.dart';
part 'analytics_model.g.dart';
@freezed
class AnalyticsModel with _$AnalyticsModel{
  const factory AnalyticsModel({
    @JsonKey(name: 'status')  bool? status,
    @JsonKey(name: 'message') @Default('') String? message,
    @JsonKey(name: 'data') @Default([]) List<Data>? data,
  }) = _AnalyticsModel;

  factory AnalyticsModel.fromJson(Map<String, dynamic> json) => _$AnalyticsModelFromJson(json);
}
@freezed
class Data with _$Data{
  const factory Data({
    @JsonKey(name: 'game_type_id') @Default(0) int? gameTypeId,
    @JsonKey(name: 'game_type_name') @Default('') String? gameTypeName,
    @JsonKey(name: 'games_played') @Default(0) int? gamesPlayed,
    @JsonKey(name: 'min_time') @Default('') String? bestRecords,
    @JsonKey(name: "created_dt") @Default('0') String? createdDt,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}