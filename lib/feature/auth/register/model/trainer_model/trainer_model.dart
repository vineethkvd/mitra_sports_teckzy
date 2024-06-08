import 'package:freezed_annotation/freezed_annotation.dart';

part 'trainer_model.freezed.dart';
part 'trainer_model.g.dart';

@freezed
class TrainerListModel with _$TrainerListModel {
  const factory TrainerListModel({
    @JsonKey(name: 'status') @Default('') String? status,
    @JsonKey(name: 'message') @Default('') String? message,
    @JsonKey(name: 'Data') @Default([]) List<TrainerList>? trainerList,
  }) = _TrainerListModel;

  factory TrainerListModel.fromJson(Map<String, dynamic> json) =>
      _$TrainerListModelFromJson(json);
}

@freezed
class TrainerList with _$TrainerList {
  const factory TrainerList({
    @JsonKey(name: 'trainer_id') @Default(0) int? trainerId,
    @JsonKey(name: 'trainer_name') @Default('') String? trainerName,
  }) = _TrainerList;

  factory TrainerList.fromJson(Map<String, dynamic> json) =>
      _$TrainerListFromJson(json);
}
