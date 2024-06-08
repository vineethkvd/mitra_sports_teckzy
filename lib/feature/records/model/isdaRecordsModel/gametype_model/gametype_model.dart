import 'package:freezed_annotation/freezed_annotation.dart';

part 'gametype_model.freezed.dart';
part 'gametype_model.g.dart';
@freezed
class GameTypeModel with _$GameTypeModel{
  const factory GameTypeModel({
    @JsonKey(name: 'status') @Default(false) bool? status,
    @JsonKey(name: 'message') @Default('') String? message,
    @JsonKey(name: 'Data') @Default([]) List<Data>? data,
  }) = _GameTypeModel;

  factory GameTypeModel.fromJson(Map<String, dynamic> json) => _$GameTypeModelFromJson(json);
}
@freezed
class Data with _$Data{
  const factory Data({
    @JsonKey(name: 'game_type_id') @Default(0) int? gameTypeId,
    @JsonKey(name: 'game_type_name') @Default('') String? gameTypeName,
    @JsonKey(name: 'game_type_img') @Default('') String? gameTypeImg,
    @JsonKey(name: 'game_type_createed_dt') @Default('') String? gameTypeCreateedDt,
}) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}