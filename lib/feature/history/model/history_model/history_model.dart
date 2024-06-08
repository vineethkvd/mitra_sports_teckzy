import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_model.freezed.dart';
part 'history_model.g.dart';

@freezed
class HistoryModel with _$HistoryModel {
  const factory HistoryModel({
    @JsonKey(name: 'status') @Default(false) bool? status,
    @JsonKey(name: 'message') @Default('') String? message,
    @JsonKey(name: 'data') @Default([]) List<HistoryList>? historyList,
  }) = _historyModel;

  factory HistoryModel.fromJson(Map<String, dynamic> json) =>
      _$HistoryModelFromJson(json);
}

@freezed
class HistoryList with _$HistoryList {
  const factory HistoryList({
    @JsonKey(name: 'record_id') @Default(0) int? recordId,
    @JsonKey(name: 'game_id') @Default(0) int? gameId,
    @JsonKey(name: 'start_time') @Default('') String? startTime,
    @JsonKey(name: 'end_time') @Default('') String? endTime,
    @JsonKey(name: 'total_time') @Default('') String? totalTime,
    @JsonKey(name: 'created_dt') @Default('') String? createdDate,
    @JsonKey(name: 'user_name') @Default('') String? userName,
    @JsonKey(name: 'user_id') @Default(0) int? userId,
    @JsonKey(name: 'game_type_name') @Default('') String? gameType,
  }) = _historyList;

  factory HistoryList.fromJson(Map<String, dynamic> json) =>
      _$HistoryListFromJson(json);
}
