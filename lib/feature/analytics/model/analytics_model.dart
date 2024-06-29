import 'package:freezed_annotation/freezed_annotation.dart';
part 'analytics_model.freezed.dart';
part 'analytics_model.g.dart';

@freezed
class AnalyticsModel with _$AnalyticsModel {
  const factory AnalyticsModel({
    @JsonKey(name: 'status') bool? status,
    @JsonKey(name: 'message') @Default('') String? message,
    @JsonKey(name: 'data') @Default(Data()) Data? data,
  }) = _AnalyticsModel;

  factory AnalyticsModel.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "daily") @Default([]) List<Daily>? daily,
    @JsonKey(name: "weekly") @Default([]) List<Daily>? weekly,
    @JsonKey(name: "monthly") @Default([]) List<Daily>? monthly,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Daily with _$Daily {
  const factory Daily({
    @JsonKey(name: "game_type_id") @Default(0) int? gameTypeId,
    @JsonKey(name: "game_type_name") @Default('') String? gameTypeName,
    @JsonKey(name: "games_played") @Default(0) int? gamesPlayed,
    @JsonKey(name: "min_time") @Default('') String? minTime,
    @JsonKey(name: "min_time_date") @Default('') String? minTimeDate,
    @JsonKey(name: "overall_games_played") @Default(0) int? overallGamesPlayed,
    @JsonKey(name: "overall_min_time") @Default('') String? overallMinTime,
    @JsonKey(name: "overall_min_time_date")
    @Default('')
    String? overallMinTimeDate,
  }) = _Daily;

  factory Daily.fromJson(Map<String, dynamic> json) => _$DailyFromJson(json);
}
