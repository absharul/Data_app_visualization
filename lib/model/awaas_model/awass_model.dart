import 'package:freezed_annotation/freezed_annotation.dart';

part 'awass_model.freezed.dart';
part 'awass_model.g.dart';

@freezed
class PmayGModel with _$PmayGModel {
  const factory PmayGModel({
    @JsonKey(name: 'sl__no_') required String slNo,
    @JsonKey(name: 'state_ut') required String stateUt,
    @JsonKey(name: 'targets_allocated') required double targetsAllocated,
    @JsonKey(name: 'houses_sanctioned') required double housesSanctioned,
    @JsonKey(name: 'houses_completed') required double housesCompleted,
  }) = _PmayGModel;

  factory PmayGModel.fromJson(Map<String, dynamic> json) =>
      _$PmayGModelFromJson(json);
}
