// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'awass_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PmayGModel _$PmayGModelFromJson(Map<String, dynamic> json) {
  return _PmayGModel.fromJson(json);
}

/// @nodoc
mixin _$PmayGModel {
  @JsonKey(name: 'sl__no_')
  String get slNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'state_ut')
  String get stateUt => throw _privateConstructorUsedError;
  @JsonKey(name: 'targets_allocated')
  double get targetsAllocated => throw _privateConstructorUsedError;
  @JsonKey(name: 'houses_sanctioned')
  double get housesSanctioned => throw _privateConstructorUsedError;
  @JsonKey(name: 'houses_completed')
  double get housesCompleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PmayGModelCopyWith<PmayGModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PmayGModelCopyWith<$Res> {
  factory $PmayGModelCopyWith(
          PmayGModel value, $Res Function(PmayGModel) then) =
      _$PmayGModelCopyWithImpl<$Res, PmayGModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sl__no_') String slNo,
      @JsonKey(name: 'state_ut') String stateUt,
      @JsonKey(name: 'targets_allocated') double targetsAllocated,
      @JsonKey(name: 'houses_sanctioned') double housesSanctioned,
      @JsonKey(name: 'houses_completed') double housesCompleted});
}

/// @nodoc
class _$PmayGModelCopyWithImpl<$Res, $Val extends PmayGModel>
    implements $PmayGModelCopyWith<$Res> {
  _$PmayGModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slNo = null,
    Object? stateUt = null,
    Object? targetsAllocated = null,
    Object? housesSanctioned = null,
    Object? housesCompleted = null,
  }) {
    return _then(_value.copyWith(
      slNo: null == slNo
          ? _value.slNo
          : slNo // ignore: cast_nullable_to_non_nullable
              as String,
      stateUt: null == stateUt
          ? _value.stateUt
          : stateUt // ignore: cast_nullable_to_non_nullable
              as String,
      targetsAllocated: null == targetsAllocated
          ? _value.targetsAllocated
          : targetsAllocated // ignore: cast_nullable_to_non_nullable
              as double,
      housesSanctioned: null == housesSanctioned
          ? _value.housesSanctioned
          : housesSanctioned // ignore: cast_nullable_to_non_nullable
              as double,
      housesCompleted: null == housesCompleted
          ? _value.housesCompleted
          : housesCompleted // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PmayGModelImplCopyWith<$Res>
    implements $PmayGModelCopyWith<$Res> {
  factory _$$PmayGModelImplCopyWith(
          _$PmayGModelImpl value, $Res Function(_$PmayGModelImpl) then) =
      __$$PmayGModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sl__no_') String slNo,
      @JsonKey(name: 'state_ut') String stateUt,
      @JsonKey(name: 'targets_allocated') double targetsAllocated,
      @JsonKey(name: 'houses_sanctioned') double housesSanctioned,
      @JsonKey(name: 'houses_completed') double housesCompleted});
}

/// @nodoc
class __$$PmayGModelImplCopyWithImpl<$Res>
    extends _$PmayGModelCopyWithImpl<$Res, _$PmayGModelImpl>
    implements _$$PmayGModelImplCopyWith<$Res> {
  __$$PmayGModelImplCopyWithImpl(
      _$PmayGModelImpl _value, $Res Function(_$PmayGModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slNo = null,
    Object? stateUt = null,
    Object? targetsAllocated = null,
    Object? housesSanctioned = null,
    Object? housesCompleted = null,
  }) {
    return _then(_$PmayGModelImpl(
      slNo: null == slNo
          ? _value.slNo
          : slNo // ignore: cast_nullable_to_non_nullable
              as String,
      stateUt: null == stateUt
          ? _value.stateUt
          : stateUt // ignore: cast_nullable_to_non_nullable
              as String,
      targetsAllocated: null == targetsAllocated
          ? _value.targetsAllocated
          : targetsAllocated // ignore: cast_nullable_to_non_nullable
              as double,
      housesSanctioned: null == housesSanctioned
          ? _value.housesSanctioned
          : housesSanctioned // ignore: cast_nullable_to_non_nullable
              as double,
      housesCompleted: null == housesCompleted
          ? _value.housesCompleted
          : housesCompleted // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PmayGModelImpl implements _PmayGModel {
  const _$PmayGModelImpl(
      {@JsonKey(name: 'sl__no_') required this.slNo,
      @JsonKey(name: 'state_ut') required this.stateUt,
      @JsonKey(name: 'targets_allocated') required this.targetsAllocated,
      @JsonKey(name: 'houses_sanctioned') required this.housesSanctioned,
      @JsonKey(name: 'houses_completed') required this.housesCompleted});

  factory _$PmayGModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PmayGModelImplFromJson(json);

  @override
  @JsonKey(name: 'sl__no_')
  final String slNo;
  @override
  @JsonKey(name: 'state_ut')
  final String stateUt;
  @override
  @JsonKey(name: 'targets_allocated')
  final double targetsAllocated;
  @override
  @JsonKey(name: 'houses_sanctioned')
  final double housesSanctioned;
  @override
  @JsonKey(name: 'houses_completed')
  final double housesCompleted;

  @override
  String toString() {
    return 'PmayGModel(slNo: $slNo, stateUt: $stateUt, targetsAllocated: $targetsAllocated, housesSanctioned: $housesSanctioned, housesCompleted: $housesCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PmayGModelImpl &&
            (identical(other.slNo, slNo) || other.slNo == slNo) &&
            (identical(other.stateUt, stateUt) || other.stateUt == stateUt) &&
            (identical(other.targetsAllocated, targetsAllocated) ||
                other.targetsAllocated == targetsAllocated) &&
            (identical(other.housesSanctioned, housesSanctioned) ||
                other.housesSanctioned == housesSanctioned) &&
            (identical(other.housesCompleted, housesCompleted) ||
                other.housesCompleted == housesCompleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, slNo, stateUt, targetsAllocated,
      housesSanctioned, housesCompleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PmayGModelImplCopyWith<_$PmayGModelImpl> get copyWith =>
      __$$PmayGModelImplCopyWithImpl<_$PmayGModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PmayGModelImplToJson(
      this,
    );
  }
}

abstract class _PmayGModel implements PmayGModel {
  const factory _PmayGModel(
      {@JsonKey(name: 'sl__no_') required final String slNo,
      @JsonKey(name: 'state_ut') required final String stateUt,
      @JsonKey(name: 'targets_allocated')
      required final double targetsAllocated,
      @JsonKey(name: 'houses_sanctioned')
      required final double housesSanctioned,
      @JsonKey(name: 'houses_completed')
      required final double housesCompleted}) = _$PmayGModelImpl;

  factory _PmayGModel.fromJson(Map<String, dynamic> json) =
      _$PmayGModelImpl.fromJson;

  @override
  @JsonKey(name: 'sl__no_')
  String get slNo;
  @override
  @JsonKey(name: 'state_ut')
  String get stateUt;
  @override
  @JsonKey(name: 'targets_allocated')
  double get targetsAllocated;
  @override
  @JsonKey(name: 'houses_sanctioned')
  double get housesSanctioned;
  @override
  @JsonKey(name: 'houses_completed')
  double get housesCompleted;
  @override
  @JsonKey(ignore: true)
  _$$PmayGModelImplCopyWith<_$PmayGModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
