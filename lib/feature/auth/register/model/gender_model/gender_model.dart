import 'package:freezed_annotation/freezed_annotation.dart';

part 'gender_model.freezed.dart';
part 'gender_model.g.dart';

@freezed
class GenderListModel with _$GenderListModel {
  const factory GenderListModel({
    @JsonKey(name: 'status') bool? status,
    @JsonKey(name: 'message') @Default('') String? message,
    @JsonKey(name: 'Data') @Default([]) List<GenderList>? genderList,
  }) = _GenderListModel;

  factory GenderListModel.fromJson(Map<String, dynamic> json) =>
      _$GenderListModelFromJson(json);
}

@freezed
class GenderList with _$GenderList {
  const factory GenderList({
    @JsonKey(name: 'gender_id') @Default(0) int? genderId,
    @JsonKey(name: 'gender_name') @Default('') String? genderName,
  }) = _GenderList;

  factory GenderList.fromJson(Map<String, dynamic> json) =>
      _$GenderListFromJson(json);
}
