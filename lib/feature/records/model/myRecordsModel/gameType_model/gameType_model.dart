import 'package:freezed_annotation/freezed_annotation.dart';

part 'gameType_model.freezed.dart';
part 'gameType_model.g.dart';

@freezed
class GameTypeModel with _$GameTypeModel {
  const factory GameTypeModel({
    @JsonKey(name: 'status') bool? status,
    @JsonKey(name: 'message') @Default('') String? message,
    @JsonKey(name: 'Data') @Default([]) List<GameList>? gameList,
  }) = _GameTypeModel;

  factory GameTypeModel.fromJson(Map<String, dynamic> json) =>
      _$GameTypeModelFromJson(json);
}

@freezed
class GameList with _$GameList {
  const factory GameList({
    @JsonKey(name: 'game_type_id') @Default(0) int? gameTypeId,
    @JsonKey(name: 'game_type_name') @Default('') String? gameName,
    @JsonKey(name: 'game_type_img') @Default('') String? gameImage,
    @JsonKey(name: 'game_type_createed_dt') @Default('') String? createdDate,
  }) = _GameList;

  factory GameList.fromJson(Map<String, dynamic> json) =>
      _$GameListFromJson(json);
}
