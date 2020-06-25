// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

KData _$KDataFromJson(Map<String, dynamic> json) {
  return _KData.fromJson(json);
}

mixin _$KData {
  int get from;
  KTask get task;

  KData copyWith({int from, KTask task});

  Map<String, dynamic> toJson();
}

class _$KDataTearOff {
  const _$KDataTearOff();

  _KData call({@required int from, @required KTask task}) {
    return _KData(
      from: from,
      task: task,
    );
  }
}

const $KData = _$KDataTearOff();

@JsonSerializable()
class _$_KData implements _KData {
  const _$_KData({@required this.from, @required this.task})
      : assert(from != null),
        assert(task != null);

  factory _$_KData.fromJson(Map<String, dynamic> json) =>
      _$_$_KDataFromJson(json);

  @override
  final int from;
  @override
  final KTask task;

  @override
  String toString() {
    return 'KData(from: $from, task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _KData &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.task, task) ||
                const DeepCollectionEquality().equals(other.task, task)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(task);

  @override
  _$_KData copyWith({
    Object from = freezed,
    Object task = freezed,
  }) {
    return _$_KData(
      from: from == freezed ? this.from : from as int,
      task: task == freezed ? this.task : task as KTask,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_KDataToJson(this);
  }
}

abstract class _KData implements KData {
  const factory _KData({@required int from, @required KTask task}) = _$_KData;

  factory _KData.fromJson(Map<String, dynamic> json) = _$_KData.fromJson;

  @override
  int get from;
  @override
  KTask get task;

  @override
  _KData copyWith({int from, KTask task});
}
