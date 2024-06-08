import 'package:freezed_annotation/freezed_annotation.dart';
part 'learn_model.freezed.dart';
part 'learn_model.g.dart';

@freezed
class LearnModel with _$LearnModel {
  const factory LearnModel({
    @JsonKey(name: "status") @Default('') String? status,
    @JsonKey(name: "message") @Default('') String? message,
    @JsonKey(name: "Data") @Default([]) List<Data>? data,
  }) = _LearnModel;

  factory LearnModel.fromJson(Map<String, dynamic> json) =>
      _$LearnModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "tutorial_web_id") @Default(0) int? tutorialWebId,
    @JsonKey(name: "tutorial_web_name") @Default('') String? tutorialWebName,
    @JsonKey(name: "video_web") @Default('') String? videoweb,
    @JsonKey(name: "tutorial_source_file")
    @Default('')
    String? tutorialSourceFile,
    @JsonKey(name: "tutorial_web_details")
    @Default('')
    String? tutorialWebDetails,
    @JsonKey(name: "tutorial_web_created")
    @Default('')
    String? tutorialWebCreated,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
