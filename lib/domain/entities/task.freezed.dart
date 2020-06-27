// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

KTask _$KTaskFromJson(Map<String, dynamic> json) {
  return _KTask.fromJson(json);
}

mixin _$KTask {
  String get title;

  KTask copyWith({String title});

  Map<String, dynamic> toJson();
}

class _$KTaskTearOff {
  const _$KTaskTearOff();

  _KTask call({String title}) {
    return _KTask(
      title: title,
    );
  }
}

const $KTask = _$KTaskTearOff();

@JsonSerializable()
class _$_KTask implements _KTask {
  const _$_KTask({this.title});

  factory _$_KTask.fromJson(Map<String, dynamic> json) =>
      _$_$_KTaskFromJson(json);

  @override
  final String title;

  @override
  String toString() {
    return 'KTask(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _KTask &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(title);

  @override
  _$_KTask copyWith({
    Object title = freezed,
  }) {
    return _$_KTask(
      title: title == freezed ? this.title : title as String,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_KTaskToJson(this);
  }
}

abstract class _KTask implements KTask {
  const factory _KTask({String title}) = _$_KTask;

  factory _KTask.fromJson(Map<String, dynamic> json) = _$_KTask.fromJson;

  @override
  String get title;

  @override
  _KTask copyWith({String title});
}
