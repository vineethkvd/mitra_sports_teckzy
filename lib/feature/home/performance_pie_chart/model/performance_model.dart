import 'package:freezed_annotation/freezed_annotation.dart';

part 'performance_model.freezed.dart';
part 'performance_model.g.dart';

@freezed
class PerformanceModel with _$PerformanceModel{
  const factory PerformanceModel({
    @JsonKey(name: 'status') @Default(false) bool? status,
    @JsonKey(name: 'message') @Default('') String? message,
    @JsonKey(name: 'data') GraphData? data,
  }) = _PerformanceModel;

  factory PerformanceModel.fromJson(Map<String, dynamic> json) => 
  _$PerformanceModelFromJson(json);
}


@freezed
class GraphData with _$GraphData {
    const factory GraphData({
        @JsonKey(name: "total_games_played") @Default(0)
        int? totalGamesPlayed,
        @JsonKey(name: "games_data") @Default([])
        List<GamesData>? gamesData,
    }) = _Data;
     factory GraphData.fromJson(Map<String, dynamic> json) => _$GraphDataFromJson(json);
}

@freezed
class GamesData with _$GamesData {
    const factory GamesData({
        @JsonKey(name: "game_type_id") @Default(0)
        int? gameTypeId,
        @JsonKey(name: "game_type_name") @Default('')
        String? gameTypeName,
        @JsonKey(name: "games_played") @Default(0)
        int? gamesPlayed,
        @JsonKey(name: "best_records") @Default('')
        String? bestRecords,
    }) = _GamesData;
    factory GamesData.fromJson(Map<String, dynamic> json) => _$GamesDataFromJson(json);
}
