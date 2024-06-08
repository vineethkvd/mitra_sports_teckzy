import 'package:freezed_annotation/freezed_annotation.dart';

part 'records_model.freezed.dart';
part 'records_model.g.dart';

@freezed
class RecordsModel with _$RecordsModel {
  const factory RecordsModel({
    @JsonKey(name: 'status') @Default(false) bool? status,
    @JsonKey(name: 'message') @Default('') String? message,
    @JsonKey(name: 'data') @Default([]) List<RecordList>? recordList,
  }) = _recordsModel;

  factory RecordsModel.fromJson(Map<String, dynamic> json) =>
      _$RecordsModelFromJson(json);
}

@freezed
class RecordList with _$RecordList {
  const factory RecordList({
    @JsonKey(name: 'record_id') @Default(0) int? recordId,
    @JsonKey(name: 'user_id') @Default(0) int? userId,
    @JsonKey(name: 'game_id') @Default(0) int? gameId,
    @JsonKey(name: 'start_time') @Default('') String? startTime,
    @JsonKey(name: 'end_time') @Default('') String? endTime,
    @JsonKey(name: 'total_time') @Default('') String? totalTime,
    @JsonKey(name: 'created_dt') @Default('') String? createdDate,
    @JsonKey(name: "game_type_name") @Default('') String? gameTypeName,
  }) = _recordList;

  factory RecordList.fromJson(Map<String, dynamic> json) =>
      _$RecordListFromJson(json);
}
