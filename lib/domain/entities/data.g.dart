// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KData _$_$_KDataFromJson(Map<String, dynamic> json) {
  return _$_KData(
    from: json['from'] as int,
    task: json['task'] == null
        ? null
        : KTask.fromJson(json['task'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_KDataToJson(_$_KData instance) => <String, dynamic>{
      'from': instance.from,
      'task': instance.task,
    };
