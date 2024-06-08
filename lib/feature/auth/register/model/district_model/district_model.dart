import 'package:freezed_annotation/freezed_annotation.dart';

part 'district_model.freezed.dart';
part 'district_model.g.dart';

@freezed
class DistrictModelList with _$DistrictModelList {
  const factory DistrictModelList({
    @JsonKey(name: 'status') @Default('') String? status,
    @JsonKey(name: 'message') @Default('') String? message,
    @JsonKey(name: 'Data') @Default([]) List<DistrictList>? districtList,
  }) = _districtModelList;

  factory DistrictModelList.fromJson(Map<String, dynamic> json) =>
      _$DistrictModelListFromJson(json);
}

@freezed
class DistrictList with _$DistrictList {
  const factory DistrictList({
    @JsonKey(name: 'district_id') @Default(0) int? districtId,
    @JsonKey(name: 'district_name') @Default('') String? districtName,
    @JsonKey(name: 'state_id') @Default(0) int? stateId,
    @JsonKey(name: 'status') @Default(0) int? status,
  }) = _districtList;

  factory DistrictList.fromJson(Map<String, dynamic> json) =>
      _$DistrictListFromJson(json);
}

