import 'package:freezed_annotation/freezed_annotation.dart';

part 'school_model.freezed.dart';
part 'school_model.g.dart';

@freezed
class SchoolListModel with _$SchoolListModel {
  const factory SchoolListModel({
    @JsonKey(name: 'status') bool? status,
    @JsonKey(name: 'message') @Default('') String? message,
    @JsonKey(name: 'Data') @Default([]) List<SchoolList>? schoolList,
  }) = _SchoolListModel;

  factory SchoolListModel.fromJson(Map<String, dynamic> json) =>
      _$SchoolListModelFromJson(json);
}

@freezed
class SchoolList with _$SchoolList {
  const factory SchoolList({
    @JsonKey(name: 'school_id') @Default(0) int? schoolId,
    @JsonKey(name: 'school_name') @Default('') String? schoolName,
    @JsonKey(name: 'school_location') @Default('') String? schoolLocation,
    @JsonKey(name: 'school_status') @Default(0) int? schoolStatus,
    @JsonKey(name: 'school_create_dt') @Default('') String? createdt,
  }) = _SchoolList;

  factory SchoolList.fromJson(Map<String, dynamic> json) =>
      _$SchoolListFromJson(json);
}
