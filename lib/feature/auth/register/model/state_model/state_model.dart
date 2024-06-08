import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_model.freezed.dart';
part 'state_model.g.dart';

@freezed
class StateModelList with _$StateModelList {
  const factory StateModelList({
    @JsonKey(name: 'status') @Default('') String? status,
    @JsonKey(name: 'message') @Default('') String? message,
    @JsonKey(name: 'Data') @Default([]) List<StateList>? stateList,
  }) = _StateModelList;

  factory StateModelList.fromJson(Map<String, dynamic> json) =>
      _$StateModelListFromJson(json);
}

@freezed
class StateList with _$StateList {
  const factory StateList({
    @JsonKey(name: 'state_id') @Default(0) int? stateId,
    @JsonKey(name: 'state_name') @Default('') String? stateName,
    @JsonKey(name: 'country_id') @Default(0) int? countryId,
    @JsonKey(name: 'status') @Default(0) int? status,
  }) = _StateList;

  factory StateList.fromJson(Map<String, dynamic> json) =>
      _$StateListFromJson(json);
}
