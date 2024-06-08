import 'package:freezed_annotation/freezed_annotation.dart';

part 'deleteHistory_model.freezed.dart';
part 'deleteHistory_model.g.dart';

@freezed
class DeleteHistoryModel with _$DeleteHistoryModel {
  const factory DeleteHistoryModel({
    @JsonKey(name: 'status') bool? status,
    @JsonKey(name: 'message') @Default('') String? message,
  }) = _DeleteHistoryModel;

  factory DeleteHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$DeleteHistoryModelFromJson(json);
}
