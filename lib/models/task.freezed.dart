// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$KTask {
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $KTaskCopyWith<KTask> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KTaskCopyWith<$Res> {
  factory $KTaskCopyWith(KTask value, $Res Function(KTask) then) =
      _$KTaskCopyWithImpl<$Res, KTask>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class _$KTaskCopyWithImpl<$Res, $Val extends KTask>
    implements $KTaskCopyWith<$Res> {
  _$KTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KTaskCopyWith<$Res> implements $KTaskCopyWith<$Res> {
  factory _$$_KTaskCopyWith(_$_KTask value, $Res Function(_$_KTask) then) =
      __$$_KTaskCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$_KTaskCopyWithImpl<$Res> extends _$KTaskCopyWithImpl<$Res, _$_KTask>
    implements _$$_KTaskCopyWith<$Res> {
  __$$_KTaskCopyWithImpl(_$_KTask _value, $Res Function(_$_KTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$_KTask(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_KTask implements _KTask {
  const _$_KTask({required this.title});

  @override
  final String title;

  @override
  String toString() {
    return 'KTask(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KTask &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KTaskCopyWith<_$_KTask> get copyWith =>
      __$$_KTaskCopyWithImpl<_$_KTask>(this, _$identity);
}

abstract class _KTask implements KTask {
  const factory _KTask({required final String title}) = _$_KTask;

  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_KTaskCopyWith<_$_KTask> get copyWith =>
      throw _privateConstructorUsedError;
}
