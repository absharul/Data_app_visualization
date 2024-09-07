// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'awass_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PmayGModelImpl _$$PmayGModelImplFromJson(Map<String, dynamic> json) =>
    _$PmayGModelImpl(
      slNo: json['sl__no_'] as String,
      stateUt: json['state_ut'] as String,
      targetsAllocated: (json['targets_allocated'] as num).toDouble(),
      housesSanctioned: (json['houses_sanctioned'] as num).toDouble(),
      housesCompleted: (json['houses_completed'] as num).toDouble(),
    );

Map<String, dynamic> _$$PmayGModelImplToJson(_$PmayGModelImpl instance) =>
    <String, dynamic>{
      'sl__no_': instance.slNo,
      'state_ut': instance.stateUt,
      'targets_allocated': instance.targetsAllocated,
      'houses_sanctioned': instance.housesSanctioned,
      'houses_completed': instance.housesCompleted,
    };
