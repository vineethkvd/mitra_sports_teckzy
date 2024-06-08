import 'package:freezed_annotation/freezed_annotation.dart';
part 'tournament_model.freezed.dart';
part 'tournament_model.g.dart';

@freezed
class TournamentModel with _$TournamentModel {
  const factory TournamentModel({
    @JsonKey(name: "status") @Default('') String? status,
    @JsonKey(name: 'message') @Default('') String? message,
    @JsonKey(name: 'Data') @Default([]) List<Data>? data,
  }) = _TournamentModel;

  factory TournamentModel.fromJson(Map<String, dynamic> json) =>
      _$TournamentModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "tourn_id") @Default(0) int? tournId,
    @JsonKey(name: "tourn_type")@Default('') String? tournType,
    @JsonKey(name: "game_type")@Default('') String? gameType,
    @JsonKey(name: "game_type_name")@Default('') String? gameName,
    @JsonKey(name: "tourn_name") @Default('') String? tournName,
    @JsonKey(name: "tourn_image")@Default('') String? tournImage,
    @JsonKey(name: "tourn_url")@Default('') String? tournUrl,
    @JsonKey(name: "tourn_details")@Default('') String? tournDetails,
    @JsonKey(name: "tourn_date")@Default('') String? tournDate,
    @JsonKey(name: "tourn_time")@Default('') String? tournTime,
    @JsonKey(name: "tourn_created")@Default('') String? tournCreated,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
