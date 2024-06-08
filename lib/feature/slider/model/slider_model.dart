import 'package:freezed_annotation/freezed_annotation.dart';
part 'slider_model.freezed.dart';
part 'slider_model.g.dart';

@freezed
class SlidersModel with _$SlidersModel {
  const factory SlidersModel({
    @JsonKey(name: 'status') @Default('') String? status,
    @JsonKey(name: 'message') @Default('') String? message,
    @JsonKey(name: 'Data') @Default([]) List<Data>? data,
  }) = _SlidersModel;

  factory SlidersModel.fromJson(Map<String, dynamic> json) =>
      _$SlidersModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: 'image_id:') @Default(0) int? imageId,
    @JsonKey(name: 'images_name') @Default('') String? imagesName,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
