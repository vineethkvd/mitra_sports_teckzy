// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trainer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrainerListModel _$TrainerListModelFromJson(Map<String, dynamic> json) {
  return _TrainerListModel.fromJson(json);
}

/// @nodoc
mixin _$TrainerListModel {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'Data')
  List<TrainerList>? get trainerList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrainerListModelCopyWith<TrainerListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainerListModelCopyWith<$Res> {
  factory $TrainerListModelCopyWith(
          TrainerListModel value, $Res Function(TrainerListModel) then) =
      _$TrainerListModelCopyWithImpl<$Res, TrainerListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'Data') List<TrainerList>? trainerList});
}

/// @nodoc
class _$TrainerListModelCopyWithImpl<$Res, $Val extends TrainerListModel>
    implements $TrainerListModelCopyWith<$Res> {
  _$TrainerListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? trainerList = freezed,
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
      trainerList: freezed == trainerList
          ? _value.trainerList
          : trainerList // ignore: cast_nullable_to_non_nullable
              as List<TrainerList>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrainerListModelImplCopyWith<$Res>
    implements $TrainerListModelCopyWith<$Res> {
  factory _$$TrainerListModelImplCopyWith(_$TrainerListModelImpl value,
          $Res Function(_$TrainerListModelImpl) then) =
      __$$TrainerListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'Data') List<TrainerList>? trainerList});
}

/// @nodoc
class __$$TrainerListModelImplCopyWithImpl<$Res>
    extends _$TrainerListModelCopyWithImpl<$Res, _$TrainerListModelImpl>
    implements _$$TrainerListModelImplCopyWith<$Res> {
  __$$TrainerListModelImplCopyWithImpl(_$TrainerListModelImpl _value,
      $Res Function(_$TrainerListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? trainerList = freezed,
  }) {
    return _then(_$TrainerListModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      trainerList: freezed == trainerList
          ? _value._trainerList
          : trainerList // ignore: cast_nullable_to_non_nullable
              as List<TrainerList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrainerListModelImpl implements _TrainerListModel {
  const _$TrainerListModelImpl(
      {@JsonKey(name: 'status') this.status = '',
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'Data') final List<TrainerList>? trainerList = const []})
      : _trainerList = trainerList;

  factory _$TrainerListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrainerListModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<TrainerList>? _trainerList;
  @override
  @JsonKey(name: 'Data')
  List<TrainerList>? get trainerList {
    final value = _trainerList;
    if (value == null) return null;
    if (_trainerList is EqualUnmodifiableListView) return _trainerList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TrainerListModel(status: $status, message: $message, trainerList: $trainerList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainerListModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._trainerList, _trainerList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_trainerList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainerListModelImplCopyWith<_$TrainerListModelImpl> get copyWith =>
      __$$TrainerListModelImplCopyWithImpl<_$TrainerListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrainerListModelImplToJson(
      this,
    );
  }
}

abstract class _TrainerListModel implements TrainerListModel {
  const factory _TrainerListModel(
          {@JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'Data') final List<TrainerList>? trainerList}) =
      _$TrainerListModelImpl;

  factory _TrainerListModel.fromJson(Map<String, dynamic> json) =
      _$TrainerListModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'Data')
  List<TrainerList>? get trainerList;
  @override
  @JsonKey(ignore: true)
  _$$TrainerListModelImplCopyWith<_$TrainerListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TrainerList _$TrainerListFromJson(Map<String, dynamic> json) {
  return _TrainerList.fromJson(json);
}

/// @nodoc
mixin _$TrainerList {
  @JsonKey(name: 'trainer_id')
  int? get trainerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'trainer_name')
  String? get trainerName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrainerListCopyWith<TrainerList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainerListCopyWith<$Res> {
  factory $TrainerListCopyWith(
          TrainerList value, $Res Function(TrainerList) then) =
      _$TrainerListCopyWithImpl<$Res, TrainerList>;
  @useResult
  $Res call(
      {@JsonKey(name: 'trainer_id') int? trainerId,
      @JsonKey(name: 'trainer_name') String? trainerName});
}

/// @nodoc
class _$TrainerListCopyWithImpl<$Res, $Val extends TrainerList>
    implements $TrainerListCopyWith<$Res> {
  _$TrainerListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trainerId = freezed,
    Object? trainerName = freezed,
  }) {
    return _then(_value.copyWith(
      trainerId: freezed == trainerId
          ? _value.trainerId
          : trainerId // ignore: cast_nullable_to_non_nullable
              as int?,
      trainerName: freezed == trainerName
          ? _value.trainerName
          : trainerName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrainerListImplCopyWith<$Res>
    implements $TrainerListCopyWith<$Res> {
  factory _$$TrainerListImplCopyWith(
          _$TrainerListImpl value, $Res Function(_$TrainerListImpl) then) =
      __$$TrainerListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'trainer_id') int? trainerId,
      @JsonKey(name: 'trainer_name') String? trainerName});
}

/// @nodoc
class __$$TrainerListImplCopyWithImpl<$Res>
    extends _$TrainerListCopyWithImpl<$Res, _$TrainerListImpl>
    implements _$$TrainerListImplCopyWith<$Res> {
  __$$TrainerListImplCopyWithImpl(
      _$TrainerListImpl _value, $Res Function(_$TrainerListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trainerId = freezed,
    Object? trainerName = freezed,
  }) {
    return _then(_$TrainerListImpl(
      trainerId: freezed == trainerId
          ? _value.trainerId
          : trainerId // ignore: cast_nullable_to_non_nullable
              as int?,
      trainerName: freezed == trainerName
          ? _value.trainerName
          : trainerName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrainerListImpl implements _TrainerList {
  const _$TrainerListImpl(
      {@JsonKey(name: 'trainer_id') this.trainerId = 0,
      @JsonKey(name: 'trainer_name') this.trainerName = ''});

  factory _$TrainerListImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrainerListImplFromJson(json);

  @override
  @JsonKey(name: 'trainer_id')
  final int? trainerId;
  @override
  @JsonKey(name: 'trainer_name')
  final String? trainerName;

  @override
  String toString() {
    return 'TrainerList(trainerId: $trainerId, trainerName: $trainerName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainerListImpl &&
            (identical(other.trainerId, trainerId) ||
                other.trainerId == trainerId) &&
            (identical(other.trainerName, trainerName) ||
                other.trainerName == trainerName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, trainerId, trainerName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainerListImplCopyWith<_$TrainerListImpl> get copyWith =>
      __$$TrainerListImplCopyWithImpl<_$TrainerListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrainerListImplToJson(
      this,
    );
  }
}

abstract class _TrainerList implements TrainerList {
  const factory _TrainerList(
          {@JsonKey(name: 'trainer_id') final int? trainerId,
          @JsonKey(name: 'trainer_name') final String? trainerName}) =
      _$TrainerListImpl;

  factory _TrainerList.fromJson(Map<String, dynamic> json) =
      _$TrainerListImpl.fromJson;

  @override
  @JsonKey(name: 'trainer_id')
  int? get trainerId;
  @override
  @JsonKey(name: 'trainer_name')
  String? get trainerName;
  @override
  @JsonKey(ignore: true)
  _$$TrainerListImplCopyWith<_$TrainerListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
