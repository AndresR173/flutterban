// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kanban_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$KanbanEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getColumns,
    required TResult Function(String title) addColumn,
    required TResult Function(int column, KTask task) deleteTask,
    required TResult Function(int column, int from, int to) reorderTask,
    required TResult Function(KData data, int column) moveTask,
    required TResult Function(int column, String title) addTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getColumns,
    TResult? Function(String title)? addColumn,
    TResult? Function(int column, KTask task)? deleteTask,
    TResult? Function(int column, int from, int to)? reorderTask,
    TResult? Function(KData data, int column)? moveTask,
    TResult? Function(int column, String title)? addTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getColumns,
    TResult Function(String title)? addColumn,
    TResult Function(int column, KTask task)? deleteTask,
    TResult Function(int column, int from, int to)? reorderTask,
    TResult Function(KData data, int column)? moveTask,
    TResult Function(int column, String title)? addTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetColumns value) getColumns,
    required TResult Function(AddColumn value) addColumn,
    required TResult Function(DeleteTask value) deleteTask,
    required TResult Function(ReorderTask value) reorderTask,
    required TResult Function(MoveTask value) moveTask,
    required TResult Function(AddTask value) addTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetColumns value)? getColumns,
    TResult? Function(AddColumn value)? addColumn,
    TResult? Function(DeleteTask value)? deleteTask,
    TResult? Function(ReorderTask value)? reorderTask,
    TResult? Function(MoveTask value)? moveTask,
    TResult? Function(AddTask value)? addTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetColumns value)? getColumns,
    TResult Function(AddColumn value)? addColumn,
    TResult Function(DeleteTask value)? deleteTask,
    TResult Function(ReorderTask value)? reorderTask,
    TResult Function(MoveTask value)? moveTask,
    TResult Function(AddTask value)? addTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KanbanEventCopyWith<$Res> {
  factory $KanbanEventCopyWith(
          KanbanEvent value, $Res Function(KanbanEvent) then) =
      _$KanbanEventCopyWithImpl<$Res, KanbanEvent>;
}

/// @nodoc
class _$KanbanEventCopyWithImpl<$Res, $Val extends KanbanEvent>
    implements $KanbanEventCopyWith<$Res> {
  _$KanbanEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetColumnsCopyWith<$Res> {
  factory _$$GetColumnsCopyWith(
          _$GetColumns value, $Res Function(_$GetColumns) then) =
      __$$GetColumnsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetColumnsCopyWithImpl<$Res>
    extends _$KanbanEventCopyWithImpl<$Res, _$GetColumns>
    implements _$$GetColumnsCopyWith<$Res> {
  __$$GetColumnsCopyWithImpl(
      _$GetColumns _value, $Res Function(_$GetColumns) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetColumns implements GetColumns {
  const _$GetColumns();

  @override
  String toString() {
    return 'KanbanEvent.getColumns()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetColumns);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getColumns,
    required TResult Function(String title) addColumn,
    required TResult Function(int column, KTask task) deleteTask,
    required TResult Function(int column, int from, int to) reorderTask,
    required TResult Function(KData data, int column) moveTask,
    required TResult Function(int column, String title) addTask,
  }) {
    return getColumns();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getColumns,
    TResult? Function(String title)? addColumn,
    TResult? Function(int column, KTask task)? deleteTask,
    TResult? Function(int column, int from, int to)? reorderTask,
    TResult? Function(KData data, int column)? moveTask,
    TResult? Function(int column, String title)? addTask,
  }) {
    return getColumns?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getColumns,
    TResult Function(String title)? addColumn,
    TResult Function(int column, KTask task)? deleteTask,
    TResult Function(int column, int from, int to)? reorderTask,
    TResult Function(KData data, int column)? moveTask,
    TResult Function(int column, String title)? addTask,
    required TResult orElse(),
  }) {
    if (getColumns != null) {
      return getColumns();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetColumns value) getColumns,
    required TResult Function(AddColumn value) addColumn,
    required TResult Function(DeleteTask value) deleteTask,
    required TResult Function(ReorderTask value) reorderTask,
    required TResult Function(MoveTask value) moveTask,
    required TResult Function(AddTask value) addTask,
  }) {
    return getColumns(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetColumns value)? getColumns,
    TResult? Function(AddColumn value)? addColumn,
    TResult? Function(DeleteTask value)? deleteTask,
    TResult? Function(ReorderTask value)? reorderTask,
    TResult? Function(MoveTask value)? moveTask,
    TResult? Function(AddTask value)? addTask,
  }) {
    return getColumns?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetColumns value)? getColumns,
    TResult Function(AddColumn value)? addColumn,
    TResult Function(DeleteTask value)? deleteTask,
    TResult Function(ReorderTask value)? reorderTask,
    TResult Function(MoveTask value)? moveTask,
    TResult Function(AddTask value)? addTask,
    required TResult orElse(),
  }) {
    if (getColumns != null) {
      return getColumns(this);
    }
    return orElse();
  }
}

abstract class GetColumns implements KanbanEvent {
  const factory GetColumns() = _$GetColumns;
}

/// @nodoc
abstract class _$$AddColumnCopyWith<$Res> {
  factory _$$AddColumnCopyWith(
          _$AddColumn value, $Res Function(_$AddColumn) then) =
      __$$AddColumnCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$AddColumnCopyWithImpl<$Res>
    extends _$KanbanEventCopyWithImpl<$Res, _$AddColumn>
    implements _$$AddColumnCopyWith<$Res> {
  __$$AddColumnCopyWithImpl(
      _$AddColumn _value, $Res Function(_$AddColumn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$AddColumn(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddColumn implements AddColumn {
  const _$AddColumn(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'KanbanEvent.addColumn(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddColumn &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddColumnCopyWith<_$AddColumn> get copyWith =>
      __$$AddColumnCopyWithImpl<_$AddColumn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getColumns,
    required TResult Function(String title) addColumn,
    required TResult Function(int column, KTask task) deleteTask,
    required TResult Function(int column, int from, int to) reorderTask,
    required TResult Function(KData data, int column) moveTask,
    required TResult Function(int column, String title) addTask,
  }) {
    return addColumn(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getColumns,
    TResult? Function(String title)? addColumn,
    TResult? Function(int column, KTask task)? deleteTask,
    TResult? Function(int column, int from, int to)? reorderTask,
    TResult? Function(KData data, int column)? moveTask,
    TResult? Function(int column, String title)? addTask,
  }) {
    return addColumn?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getColumns,
    TResult Function(String title)? addColumn,
    TResult Function(int column, KTask task)? deleteTask,
    TResult Function(int column, int from, int to)? reorderTask,
    TResult Function(KData data, int column)? moveTask,
    TResult Function(int column, String title)? addTask,
    required TResult orElse(),
  }) {
    if (addColumn != null) {
      return addColumn(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetColumns value) getColumns,
    required TResult Function(AddColumn value) addColumn,
    required TResult Function(DeleteTask value) deleteTask,
    required TResult Function(ReorderTask value) reorderTask,
    required TResult Function(MoveTask value) moveTask,
    required TResult Function(AddTask value) addTask,
  }) {
    return addColumn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetColumns value)? getColumns,
    TResult? Function(AddColumn value)? addColumn,
    TResult? Function(DeleteTask value)? deleteTask,
    TResult? Function(ReorderTask value)? reorderTask,
    TResult? Function(MoveTask value)? moveTask,
    TResult? Function(AddTask value)? addTask,
  }) {
    return addColumn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetColumns value)? getColumns,
    TResult Function(AddColumn value)? addColumn,
    TResult Function(DeleteTask value)? deleteTask,
    TResult Function(ReorderTask value)? reorderTask,
    TResult Function(MoveTask value)? moveTask,
    TResult Function(AddTask value)? addTask,
    required TResult orElse(),
  }) {
    if (addColumn != null) {
      return addColumn(this);
    }
    return orElse();
  }
}

abstract class AddColumn implements KanbanEvent {
  const factory AddColumn(final String title) = _$AddColumn;

  String get title;
  @JsonKey(ignore: true)
  _$$AddColumnCopyWith<_$AddColumn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTaskCopyWith<$Res> {
  factory _$$DeleteTaskCopyWith(
          _$DeleteTask value, $Res Function(_$DeleteTask) then) =
      __$$DeleteTaskCopyWithImpl<$Res>;
  @useResult
  $Res call({int column, KTask task});

  $KTaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$DeleteTaskCopyWithImpl<$Res>
    extends _$KanbanEventCopyWithImpl<$Res, _$DeleteTask>
    implements _$$DeleteTaskCopyWith<$Res> {
  __$$DeleteTaskCopyWithImpl(
      _$DeleteTask _value, $Res Function(_$DeleteTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? column = null,
    Object? task = null,
  }) {
    return _then(_$DeleteTask(
      null == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int,
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as KTask,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $KTaskCopyWith<$Res> get task {
    return $KTaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$DeleteTask implements DeleteTask {
  const _$DeleteTask(this.column, this.task);

  @override
  final int column;
  @override
  final KTask task;

  @override
  String toString() {
    return 'KanbanEvent.deleteTask(column: $column, task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTask &&
            (identical(other.column, column) || other.column == column) &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, column, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTaskCopyWith<_$DeleteTask> get copyWith =>
      __$$DeleteTaskCopyWithImpl<_$DeleteTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getColumns,
    required TResult Function(String title) addColumn,
    required TResult Function(int column, KTask task) deleteTask,
    required TResult Function(int column, int from, int to) reorderTask,
    required TResult Function(KData data, int column) moveTask,
    required TResult Function(int column, String title) addTask,
  }) {
    return deleteTask(column, task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getColumns,
    TResult? Function(String title)? addColumn,
    TResult? Function(int column, KTask task)? deleteTask,
    TResult? Function(int column, int from, int to)? reorderTask,
    TResult? Function(KData data, int column)? moveTask,
    TResult? Function(int column, String title)? addTask,
  }) {
    return deleteTask?.call(column, task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getColumns,
    TResult Function(String title)? addColumn,
    TResult Function(int column, KTask task)? deleteTask,
    TResult Function(int column, int from, int to)? reorderTask,
    TResult Function(KData data, int column)? moveTask,
    TResult Function(int column, String title)? addTask,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(column, task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetColumns value) getColumns,
    required TResult Function(AddColumn value) addColumn,
    required TResult Function(DeleteTask value) deleteTask,
    required TResult Function(ReorderTask value) reorderTask,
    required TResult Function(MoveTask value) moveTask,
    required TResult Function(AddTask value) addTask,
  }) {
    return deleteTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetColumns value)? getColumns,
    TResult? Function(AddColumn value)? addColumn,
    TResult? Function(DeleteTask value)? deleteTask,
    TResult? Function(ReorderTask value)? reorderTask,
    TResult? Function(MoveTask value)? moveTask,
    TResult? Function(AddTask value)? addTask,
  }) {
    return deleteTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetColumns value)? getColumns,
    TResult Function(AddColumn value)? addColumn,
    TResult Function(DeleteTask value)? deleteTask,
    TResult Function(ReorderTask value)? reorderTask,
    TResult Function(MoveTask value)? moveTask,
    TResult Function(AddTask value)? addTask,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(this);
    }
    return orElse();
  }
}

abstract class DeleteTask implements KanbanEvent {
  const factory DeleteTask(final int column, final KTask task) = _$DeleteTask;

  int get column;
  KTask get task;
  @JsonKey(ignore: true)
  _$$DeleteTaskCopyWith<_$DeleteTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReorderTaskCopyWith<$Res> {
  factory _$$ReorderTaskCopyWith(
          _$ReorderTask value, $Res Function(_$ReorderTask) then) =
      __$$ReorderTaskCopyWithImpl<$Res>;
  @useResult
  $Res call({int column, int from, int to});
}

/// @nodoc
class __$$ReorderTaskCopyWithImpl<$Res>
    extends _$KanbanEventCopyWithImpl<$Res, _$ReorderTask>
    implements _$$ReorderTaskCopyWith<$Res> {
  __$$ReorderTaskCopyWithImpl(
      _$ReorderTask _value, $Res Function(_$ReorderTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? column = null,
    Object? from = null,
    Object? to = null,
  }) {
    return _then(_$ReorderTask(
      null == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int,
      null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
      null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ReorderTask implements ReorderTask {
  const _$ReorderTask(this.column, this.from, this.to);

  @override
  final int column;
  @override
  final int from;
  @override
  final int to;

  @override
  String toString() {
    return 'KanbanEvent.reorderTask(column: $column, from: $from, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReorderTask &&
            (identical(other.column, column) || other.column == column) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @override
  int get hashCode => Object.hash(runtimeType, column, from, to);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReorderTaskCopyWith<_$ReorderTask> get copyWith =>
      __$$ReorderTaskCopyWithImpl<_$ReorderTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getColumns,
    required TResult Function(String title) addColumn,
    required TResult Function(int column, KTask task) deleteTask,
    required TResult Function(int column, int from, int to) reorderTask,
    required TResult Function(KData data, int column) moveTask,
    required TResult Function(int column, String title) addTask,
  }) {
    return reorderTask(column, from, to);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getColumns,
    TResult? Function(String title)? addColumn,
    TResult? Function(int column, KTask task)? deleteTask,
    TResult? Function(int column, int from, int to)? reorderTask,
    TResult? Function(KData data, int column)? moveTask,
    TResult? Function(int column, String title)? addTask,
  }) {
    return reorderTask?.call(column, from, to);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getColumns,
    TResult Function(String title)? addColumn,
    TResult Function(int column, KTask task)? deleteTask,
    TResult Function(int column, int from, int to)? reorderTask,
    TResult Function(KData data, int column)? moveTask,
    TResult Function(int column, String title)? addTask,
    required TResult orElse(),
  }) {
    if (reorderTask != null) {
      return reorderTask(column, from, to);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetColumns value) getColumns,
    required TResult Function(AddColumn value) addColumn,
    required TResult Function(DeleteTask value) deleteTask,
    required TResult Function(ReorderTask value) reorderTask,
    required TResult Function(MoveTask value) moveTask,
    required TResult Function(AddTask value) addTask,
  }) {
    return reorderTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetColumns value)? getColumns,
    TResult? Function(AddColumn value)? addColumn,
    TResult? Function(DeleteTask value)? deleteTask,
    TResult? Function(ReorderTask value)? reorderTask,
    TResult? Function(MoveTask value)? moveTask,
    TResult? Function(AddTask value)? addTask,
  }) {
    return reorderTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetColumns value)? getColumns,
    TResult Function(AddColumn value)? addColumn,
    TResult Function(DeleteTask value)? deleteTask,
    TResult Function(ReorderTask value)? reorderTask,
    TResult Function(MoveTask value)? moveTask,
    TResult Function(AddTask value)? addTask,
    required TResult orElse(),
  }) {
    if (reorderTask != null) {
      return reorderTask(this);
    }
    return orElse();
  }
}

abstract class ReorderTask implements KanbanEvent {
  const factory ReorderTask(final int column, final int from, final int to) =
      _$ReorderTask;

  int get column;
  int get from;
  int get to;
  @JsonKey(ignore: true)
  _$$ReorderTaskCopyWith<_$ReorderTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MoveTaskCopyWith<$Res> {
  factory _$$MoveTaskCopyWith(
          _$MoveTask value, $Res Function(_$MoveTask) then) =
      __$$MoveTaskCopyWithImpl<$Res>;
  @useResult
  $Res call({KData data, int column});

  $KDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$MoveTaskCopyWithImpl<$Res>
    extends _$KanbanEventCopyWithImpl<$Res, _$MoveTask>
    implements _$$MoveTaskCopyWith<$Res> {
  __$$MoveTaskCopyWithImpl(_$MoveTask _value, $Res Function(_$MoveTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? column = null,
  }) {
    return _then(_$MoveTask(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as KData,
      null == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $KDataCopyWith<$Res> get data {
    return $KDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$MoveTask implements MoveTask {
  const _$MoveTask(this.data, this.column);

  @override
  final KData data;
  @override
  final int column;

  @override
  String toString() {
    return 'KanbanEvent.moveTask(data: $data, column: $column)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoveTask &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.column, column) || other.column == column));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, column);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoveTaskCopyWith<_$MoveTask> get copyWith =>
      __$$MoveTaskCopyWithImpl<_$MoveTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getColumns,
    required TResult Function(String title) addColumn,
    required TResult Function(int column, KTask task) deleteTask,
    required TResult Function(int column, int from, int to) reorderTask,
    required TResult Function(KData data, int column) moveTask,
    required TResult Function(int column, String title) addTask,
  }) {
    return moveTask(data, column);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getColumns,
    TResult? Function(String title)? addColumn,
    TResult? Function(int column, KTask task)? deleteTask,
    TResult? Function(int column, int from, int to)? reorderTask,
    TResult? Function(KData data, int column)? moveTask,
    TResult? Function(int column, String title)? addTask,
  }) {
    return moveTask?.call(data, column);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getColumns,
    TResult Function(String title)? addColumn,
    TResult Function(int column, KTask task)? deleteTask,
    TResult Function(int column, int from, int to)? reorderTask,
    TResult Function(KData data, int column)? moveTask,
    TResult Function(int column, String title)? addTask,
    required TResult orElse(),
  }) {
    if (moveTask != null) {
      return moveTask(data, column);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetColumns value) getColumns,
    required TResult Function(AddColumn value) addColumn,
    required TResult Function(DeleteTask value) deleteTask,
    required TResult Function(ReorderTask value) reorderTask,
    required TResult Function(MoveTask value) moveTask,
    required TResult Function(AddTask value) addTask,
  }) {
    return moveTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetColumns value)? getColumns,
    TResult? Function(AddColumn value)? addColumn,
    TResult? Function(DeleteTask value)? deleteTask,
    TResult? Function(ReorderTask value)? reorderTask,
    TResult? Function(MoveTask value)? moveTask,
    TResult? Function(AddTask value)? addTask,
  }) {
    return moveTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetColumns value)? getColumns,
    TResult Function(AddColumn value)? addColumn,
    TResult Function(DeleteTask value)? deleteTask,
    TResult Function(ReorderTask value)? reorderTask,
    TResult Function(MoveTask value)? moveTask,
    TResult Function(AddTask value)? addTask,
    required TResult orElse(),
  }) {
    if (moveTask != null) {
      return moveTask(this);
    }
    return orElse();
  }
}

abstract class MoveTask implements KanbanEvent {
  const factory MoveTask(final KData data, final int column) = _$MoveTask;

  KData get data;
  int get column;
  @JsonKey(ignore: true)
  _$$MoveTaskCopyWith<_$MoveTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddTaskCopyWith<$Res> {
  factory _$$AddTaskCopyWith(_$AddTask value, $Res Function(_$AddTask) then) =
      __$$AddTaskCopyWithImpl<$Res>;
  @useResult
  $Res call({int column, String title});
}

/// @nodoc
class __$$AddTaskCopyWithImpl<$Res>
    extends _$KanbanEventCopyWithImpl<$Res, _$AddTask>
    implements _$$AddTaskCopyWith<$Res> {
  __$$AddTaskCopyWithImpl(_$AddTask _value, $Res Function(_$AddTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? column = null,
    Object? title = null,
  }) {
    return _then(_$AddTask(
      null == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int,
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddTask implements AddTask {
  const _$AddTask(this.column, this.title);

  @override
  final int column;
  @override
  final String title;

  @override
  String toString() {
    return 'KanbanEvent.addTask(column: $column, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTask &&
            (identical(other.column, column) || other.column == column) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, column, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTaskCopyWith<_$AddTask> get copyWith =>
      __$$AddTaskCopyWithImpl<_$AddTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getColumns,
    required TResult Function(String title) addColumn,
    required TResult Function(int column, KTask task) deleteTask,
    required TResult Function(int column, int from, int to) reorderTask,
    required TResult Function(KData data, int column) moveTask,
    required TResult Function(int column, String title) addTask,
  }) {
    return addTask(column, title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getColumns,
    TResult? Function(String title)? addColumn,
    TResult? Function(int column, KTask task)? deleteTask,
    TResult? Function(int column, int from, int to)? reorderTask,
    TResult? Function(KData data, int column)? moveTask,
    TResult? Function(int column, String title)? addTask,
  }) {
    return addTask?.call(column, title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getColumns,
    TResult Function(String title)? addColumn,
    TResult Function(int column, KTask task)? deleteTask,
    TResult Function(int column, int from, int to)? reorderTask,
    TResult Function(KData data, int column)? moveTask,
    TResult Function(int column, String title)? addTask,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(column, title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetColumns value) getColumns,
    required TResult Function(AddColumn value) addColumn,
    required TResult Function(DeleteTask value) deleteTask,
    required TResult Function(ReorderTask value) reorderTask,
    required TResult Function(MoveTask value) moveTask,
    required TResult Function(AddTask value) addTask,
  }) {
    return addTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetColumns value)? getColumns,
    TResult? Function(AddColumn value)? addColumn,
    TResult? Function(DeleteTask value)? deleteTask,
    TResult? Function(ReorderTask value)? reorderTask,
    TResult? Function(MoveTask value)? moveTask,
    TResult? Function(AddTask value)? addTask,
  }) {
    return addTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetColumns value)? getColumns,
    TResult Function(AddColumn value)? addColumn,
    TResult Function(DeleteTask value)? deleteTask,
    TResult Function(ReorderTask value)? reorderTask,
    TResult Function(MoveTask value)? moveTask,
    TResult Function(AddTask value)? addTask,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(this);
    }
    return orElse();
  }
}

abstract class AddTask implements KanbanEvent {
  const factory AddTask(final int column, final String title) = _$AddTask;

  int get column;
  String get title;
  @JsonKey(ignore: true)
  _$$AddTaskCopyWith<_$AddTask> get copyWith =>
      throw _privateConstructorUsedError;
}
