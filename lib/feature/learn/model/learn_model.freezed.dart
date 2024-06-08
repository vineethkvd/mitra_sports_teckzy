// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'learn_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LearnModel _$LearnModelFromJson(Map<String, dynamic> json) {
  return _LearnModel.fromJson(json);
}

/// @nodoc
mixin _$LearnModel {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "Data")
  List<Data>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LearnModelCopyWith<LearnModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearnModelCopyWith<$Res> {
  factory $LearnModelCopyWith(
          LearnModel value, $Res Function(LearnModel) then) =
      _$LearnModelCopyWithImpl<$Res, LearnModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "Data") List<Data>? data});
}

/// @nodoc
class _$LearnModelCopyWithImpl<$Res, $Val extends LearnModel>
    implements $LearnModelCopyWith<$Res> {
  _$LearnModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LearnModelImplCopyWith<$Res>
    implements $LearnModelCopyWith<$Res> {
  factory _$$LearnModelImplCopyWith(
          _$LearnModelImpl value, $Res Function(_$LearnModelImpl) then) =
      __$$LearnModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "Data") List<Data>? data});
}

/// @nodoc
class __$$LearnModelImplCopyWithImpl<$Res>
    extends _$LearnModelCopyWithImpl<$Res, _$LearnModelImpl>
    implements _$$LearnModelImplCopyWith<$Res> {
  __$$LearnModelImplCopyWithImpl(
      _$LearnModelImpl _value, $Res Function(_$LearnModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$LearnModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LearnModelImpl implements _LearnModel {
  const _$LearnModelImpl(
      {@JsonKey(name: "status") this.status = '',
      @JsonKey(name: "message") this.message = '',
      @JsonKey(name: "Data") final List<Data>? data = const []})
      : _data = data;

  factory _$LearnModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LearnModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "message")
  final String? message;
  final List<Data>? _data;
  @override
  @JsonKey(name: "Data")
  List<Data>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LearnModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearnModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LearnModelImplCopyWith<_$LearnModelImpl> get copyWith =>
      __$$LearnModelImplCopyWithImpl<_$LearnModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LearnModelImplToJson(
      this,
    );
  }
}

abstract class _LearnModel implements LearnModel {
  const factory _LearnModel(
      {@JsonKey(name: "status") final String? status,
      @JsonKey(name: "message") final String? message,
      @JsonKey(name: "Data") final List<Data>? data}) = _$LearnModelImpl;

  factory _LearnModel.fromJson(Map<String, dynamic> json) =
      _$LearnModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "Data")
  List<Data>? get data;
  @override
  @JsonKey(ignore: true)
  _$$LearnModelImplCopyWith<_$LearnModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "tutorial_web_id")
  int? get tutorialWebId => throw _privateConstructorUsedError;
  @JsonKey(name: "tutorial_web_name")
  String? get tutorialWebName => throw _privateConstructorUsedError;
  @JsonKey(name: "video_web")
  String? get videoweb => throw _privateConstructorUsedError;
  @JsonKey(name: "tutorial_source_file")
  String? get tutorialSourceFile => throw _privateConstructorUsedError;
  @JsonKey(name: "tutorial_web_details")
  String? get tutorialWebDetails => throw _privateConstructorUsedError;
  @JsonKey(name: "tutorial_web_created")
  String? get tutorialWebCreated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {@JsonKey(name: "tutorial_web_id") int? tutorialWebId,
      @JsonKey(name: "tutorial_web_name") String? tutorialWebName,
      @JsonKey(name: "video_web") String? videoweb,
      @JsonKey(name: "tutorial_source_file") String? tutorialSourceFile,
      @JsonKey(name: "tutorial_web_details") String? tutorialWebDetails,
      @JsonKey(name: "tutorial_web_created") String? tutorialWebCreated});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tutorialWebId = freezed,
    Object? tutorialWebName = freezed,
    Object? videoweb = freezed,
    Object? tutorialSourceFile = freezed,
    Object? tutorialWebDetails = freezed,
    Object? tutorialWebCreated = freezed,
  }) {
    return _then(_value.copyWith(
      tutorialWebId: freezed == tutorialWebId
          ? _value.tutorialWebId
          : tutorialWebId // ignore: cast_nullable_to_non_nullable
              as int?,
      tutorialWebName: freezed == tutorialWebName
          ? _value.tutorialWebName
          : tutorialWebName // ignore: cast_nullable_to_non_nullable
              as String?,
      videoweb: freezed == videoweb
          ? _value.videoweb
          : videoweb // ignore: cast_nullable_to_non_nullable
              as String?,
      tutorialSourceFile: freezed == tutorialSourceFile
          ? _value.tutorialSourceFile
          : tutorialSourceFile // ignore: cast_nullable_to_non_nullable
              as String?,
      tutorialWebDetails: freezed == tutorialWebDetails
          ? _value.tutorialWebDetails
          : tutorialWebDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      tutorialWebCreated: freezed == tutorialWebCreated
          ? _value.tutorialWebCreated
          : tutorialWebCreated // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "tutorial_web_id") int? tutorialWebId,
      @JsonKey(name: "tutorial_web_name") String? tutorialWebName,
      @JsonKey(name: "video_web") String? videoweb,
      @JsonKey(name: "tutorial_source_file") String? tutorialSourceFile,
      @JsonKey(name: "tutorial_web_details") String? tutorialWebDetails,
      @JsonKey(name: "tutorial_web_created") String? tutorialWebCreated});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tutorialWebId = freezed,
    Object? tutorialWebName = freezed,
    Object? videoweb = freezed,
    Object? tutorialSourceFile = freezed,
    Object? tutorialWebDetails = freezed,
    Object? tutorialWebCreated = freezed,
  }) {
    return _then(_$DataImpl(
      tutorialWebId: freezed == tutorialWebId
          ? _value.tutorialWebId
          : tutorialWebId // ignore: cast_nullable_to_non_nullable
              as int?,
      tutorialWebName: freezed == tutorialWebName
          ? _value.tutorialWebName
          : tutorialWebName // ignore: cast_nullable_to_non_nullable
              as String?,
      videoweb: freezed == videoweb
          ? _value.videoweb
          : videoweb // ignore: cast_nullable_to_non_nullable
              as String?,
      tutorialSourceFile: freezed == tutorialSourceFile
          ? _value.tutorialSourceFile
          : tutorialSourceFile // ignore: cast_nullable_to_non_nullable
              as String?,
      tutorialWebDetails: freezed == tutorialWebDetails
          ? _value.tutorialWebDetails
          : tutorialWebDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      tutorialWebCreated: freezed == tutorialWebCreated
          ? _value.tutorialWebCreated
          : tutorialWebCreated // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "tutorial_web_id") this.tutorialWebId = 0,
      @JsonKey(name: "tutorial_web_name") this.tutorialWebName = '',
      @JsonKey(name: "video_web") this.videoweb = '',
      @JsonKey(name: "tutorial_source_file") this.tutorialSourceFile = '',
      @JsonKey(name: "tutorial_web_details") this.tutorialWebDetails = '',
      @JsonKey(name: "tutorial_web_created") this.tutorialWebCreated = ''});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "tutorial_web_id")
  final int? tutorialWebId;
  @override
  @JsonKey(name: "tutorial_web_name")
  final String? tutorialWebName;
  @override
  @JsonKey(name: "video_web")
  final String? videoweb;
  @override
  @JsonKey(name: "tutorial_source_file")
  final String? tutorialSourceFile;
  @override
  @JsonKey(name: "tutorial_web_details")
  final String? tutorialWebDetails;
  @override
  @JsonKey(name: "tutorial_web_created")
  final String? tutorialWebCreated;

  @override
  String toString() {
    return 'Data(tutorialWebId: $tutorialWebId, tutorialWebName: $tutorialWebName, videoweb: $videoweb, tutorialSourceFile: $tutorialSourceFile, tutorialWebDetails: $tutorialWebDetails, tutorialWebCreated: $tutorialWebCreated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.tutorialWebId, tutorialWebId) ||
                other.tutorialWebId == tutorialWebId) &&
            (identical(other.tutorialWebName, tutorialWebName) ||
                other.tutorialWebName == tutorialWebName) &&
            (identical(other.videoweb, videoweb) ||
                other.videoweb == videoweb) &&
            (identical(other.tutorialSourceFile, tutorialSourceFile) ||
                other.tutorialSourceFile == tutorialSourceFile) &&
            (identical(other.tutorialWebDetails, tutorialWebDetails) ||
                other.tutorialWebDetails == tutorialWebDetails) &&
            (identical(other.tutorialWebCreated, tutorialWebCreated) ||
                other.tutorialWebCreated == tutorialWebCreated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tutorialWebId, tutorialWebName,
      videoweb, tutorialSourceFile, tutorialWebDetails, tutorialWebCreated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {@JsonKey(name: "tutorial_web_id") final int? tutorialWebId,
      @JsonKey(name: "tutorial_web_name") final String? tutorialWebName,
      @JsonKey(name: "video_web") final String? videoweb,
      @JsonKey(name: "tutorial_source_file") final String? tutorialSourceFile,
      @JsonKey(name: "tutorial_web_details") final String? tutorialWebDetails,
      @JsonKey(name: "tutorial_web_created")
      final String? tutorialWebCreated}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "tutorial_web_id")
  int? get tutorialWebId;
  @override
  @JsonKey(name: "tutorial_web_name")
  String? get tutorialWebName;
  @override
  @JsonKey(name: "video_web")
  String? get videoweb;
  @override
  @JsonKey(name: "tutorial_source_file")
  String? get tutorialSourceFile;
  @override
  @JsonKey(name: "tutorial_web_details")
  String? get tutorialWebDetails;
  @override
  @JsonKey(name: "tutorial_web_created")
  String? get tutorialWebCreated;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
