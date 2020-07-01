// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'kanban_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$KanbanEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getColumns(),
    @required Result addColumn(String title),
    @required Result deleteTask(int column, KTask task),
    @required Result reorderTask(int column, int from, int to),
    @required Result moveTask(KData data),
    @required Result addTask(int column, String title),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getColumns(),
    Result addColumn(String title),
    Result deleteTask(int column, KTask task),
    Result reorderTask(int column, int from, int to),
    Result moveTask(KData data),
    Result addTask(int column, String title),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getColumns(GetColumns value),
    @required Result addColumn(AddColumn value),
    @required Result deleteTask(DeleteTask value),
    @required Result reorderTask(ReorderTask value),
    @required Result moveTask(MoveTask value),
    @required Result addTask(AddTask value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getColumns(GetColumns value),
    Result addColumn(AddColumn value),
    Result deleteTask(DeleteTask value),
    Result reorderTask(ReorderTask value),
    Result moveTask(MoveTask value),
    Result addTask(AddTask value),
    @required Result orElse(),
  });
}

class _$KanbanEventTearOff {
  const _$KanbanEventTearOff();

  GetColumns getColumns() {
    return const GetColumns();
  }

  AddColumn addColumn(String title) {
    return AddColumn(
      title,
    );
  }

  DeleteTask deleteTask(int column, KTask task) {
    return DeleteTask(
      column,
      task,
    );
  }

  ReorderTask reorderTask(int column, int from, int to) {
    return ReorderTask(
      column,
      from,
      to,
    );
  }

  MoveTask moveTask(KData data) {
    return MoveTask(
      data,
    );
  }

  AddTask addTask(int column, String title) {
    return AddTask(
      column,
      title,
    );
  }
}

const $KanbanEvent = _$KanbanEventTearOff();

class _$GetColumns implements GetColumns {
  const _$GetColumns();

  @override
  String toString() {
    return 'KanbanEvent.getColumns()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetColumns);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getColumns(),
    @required Result addColumn(String title),
    @required Result deleteTask(int column, KTask task),
    @required Result reorderTask(int column, int from, int to),
    @required Result moveTask(KData data),
    @required Result addTask(int column, String title),
  }) {
    assert(getColumns != null);
    assert(addColumn != null);
    assert(deleteTask != null);
    assert(reorderTask != null);
    assert(moveTask != null);
    assert(addTask != null);
    return getColumns();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getColumns(),
    Result addColumn(String title),
    Result deleteTask(int column, KTask task),
    Result reorderTask(int column, int from, int to),
    Result moveTask(KData data),
    Result addTask(int column, String title),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getColumns != null) {
      return getColumns();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getColumns(GetColumns value),
    @required Result addColumn(AddColumn value),
    @required Result deleteTask(DeleteTask value),
    @required Result reorderTask(ReorderTask value),
    @required Result moveTask(MoveTask value),
    @required Result addTask(AddTask value),
  }) {
    assert(getColumns != null);
    assert(addColumn != null);
    assert(deleteTask != null);
    assert(reorderTask != null);
    assert(moveTask != null);
    assert(addTask != null);
    return getColumns(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getColumns(GetColumns value),
    Result addColumn(AddColumn value),
    Result deleteTask(DeleteTask value),
    Result reorderTask(ReorderTask value),
    Result moveTask(MoveTask value),
    Result addTask(AddTask value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getColumns != null) {
      return getColumns(this);
    }
    return orElse();
  }
}

abstract class GetColumns implements KanbanEvent {
  const factory GetColumns() = _$GetColumns;
}

class _$AddColumn implements AddColumn {
  const _$AddColumn(this.title) : assert(title != null);

  @override
  final String title;

  @override
  String toString() {
    return 'KanbanEvent.addColumn(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddColumn &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(title);

  @override
  _$AddColumn copyWith({
    Object title = freezed,
  }) {
    return _$AddColumn(
      title == freezed ? this.title : title as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getColumns(),
    @required Result addColumn(String title),
    @required Result deleteTask(int column, KTask task),
    @required Result reorderTask(int column, int from, int to),
    @required Result moveTask(KData data),
    @required Result addTask(int column, String title),
  }) {
    assert(getColumns != null);
    assert(addColumn != null);
    assert(deleteTask != null);
    assert(reorderTask != null);
    assert(moveTask != null);
    assert(addTask != null);
    return addColumn(title);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getColumns(),
    Result addColumn(String title),
    Result deleteTask(int column, KTask task),
    Result reorderTask(int column, int from, int to),
    Result moveTask(KData data),
    Result addTask(int column, String title),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addColumn != null) {
      return addColumn(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getColumns(GetColumns value),
    @required Result addColumn(AddColumn value),
    @required Result deleteTask(DeleteTask value),
    @required Result reorderTask(ReorderTask value),
    @required Result moveTask(MoveTask value),
    @required Result addTask(AddTask value),
  }) {
    assert(getColumns != null);
    assert(addColumn != null);
    assert(deleteTask != null);
    assert(reorderTask != null);
    assert(moveTask != null);
    assert(addTask != null);
    return addColumn(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getColumns(GetColumns value),
    Result addColumn(AddColumn value),
    Result deleteTask(DeleteTask value),
    Result reorderTask(ReorderTask value),
    Result moveTask(MoveTask value),
    Result addTask(AddTask value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addColumn != null) {
      return addColumn(this);
    }
    return orElse();
  }
}

abstract class AddColumn implements KanbanEvent {
  const factory AddColumn(String title) = _$AddColumn;

  String get title;

  AddColumn copyWith({String title});
}

class _$DeleteTask implements DeleteTask {
  const _$DeleteTask(this.column, this.task)
      : assert(column != null),
        assert(task != null);

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
        (other is DeleteTask &&
            (identical(other.column, column) ||
                const DeepCollectionEquality().equals(other.column, column)) &&
            (identical(other.task, task) ||
                const DeepCollectionEquality().equals(other.task, task)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(column) ^
      const DeepCollectionEquality().hash(task);

  @override
  _$DeleteTask copyWith({
    Object column = freezed,
    Object task = freezed,
  }) {
    return _$DeleteTask(
      column == freezed ? this.column : column as int,
      task == freezed ? this.task : task as KTask,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getColumns(),
    @required Result addColumn(String title),
    @required Result deleteTask(int column, KTask task),
    @required Result reorderTask(int column, int from, int to),
    @required Result moveTask(KData data),
    @required Result addTask(int column, String title),
  }) {
    assert(getColumns != null);
    assert(addColumn != null);
    assert(deleteTask != null);
    assert(reorderTask != null);
    assert(moveTask != null);
    assert(addTask != null);
    return deleteTask(column, task);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getColumns(),
    Result addColumn(String title),
    Result deleteTask(int column, KTask task),
    Result reorderTask(int column, int from, int to),
    Result moveTask(KData data),
    Result addTask(int column, String title),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteTask != null) {
      return deleteTask(column, task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getColumns(GetColumns value),
    @required Result addColumn(AddColumn value),
    @required Result deleteTask(DeleteTask value),
    @required Result reorderTask(ReorderTask value),
    @required Result moveTask(MoveTask value),
    @required Result addTask(AddTask value),
  }) {
    assert(getColumns != null);
    assert(addColumn != null);
    assert(deleteTask != null);
    assert(reorderTask != null);
    assert(moveTask != null);
    assert(addTask != null);
    return deleteTask(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getColumns(GetColumns value),
    Result addColumn(AddColumn value),
    Result deleteTask(DeleteTask value),
    Result reorderTask(ReorderTask value),
    Result moveTask(MoveTask value),
    Result addTask(AddTask value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteTask != null) {
      return deleteTask(this);
    }
    return orElse();
  }
}

abstract class DeleteTask implements KanbanEvent {
  const factory DeleteTask(int column, KTask task) = _$DeleteTask;

  int get column;
  KTask get task;

  DeleteTask copyWith({int column, KTask task});
}

class _$ReorderTask implements ReorderTask {
  const _$ReorderTask(this.column, this.from, this.to)
      : assert(column != null),
        assert(from != null),
        assert(to != null);

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
        (other is ReorderTask &&
            (identical(other.column, column) ||
                const DeepCollectionEquality().equals(other.column, column)) &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.to, to) ||
                const DeepCollectionEquality().equals(other.to, to)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(column) ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(to);

  @override
  _$ReorderTask copyWith({
    Object column = freezed,
    Object from = freezed,
    Object to = freezed,
  }) {
    return _$ReorderTask(
      column == freezed ? this.column : column as int,
      from == freezed ? this.from : from as int,
      to == freezed ? this.to : to as int,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getColumns(),
    @required Result addColumn(String title),
    @required Result deleteTask(int column, KTask task),
    @required Result reorderTask(int column, int from, int to),
    @required Result moveTask(KData data),
    @required Result addTask(int column, String title),
  }) {
    assert(getColumns != null);
    assert(addColumn != null);
    assert(deleteTask != null);
    assert(reorderTask != null);
    assert(moveTask != null);
    assert(addTask != null);
    return reorderTask(column, from, to);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getColumns(),
    Result addColumn(String title),
    Result deleteTask(int column, KTask task),
    Result reorderTask(int column, int from, int to),
    Result moveTask(KData data),
    Result addTask(int column, String title),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (reorderTask != null) {
      return reorderTask(column, from, to);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getColumns(GetColumns value),
    @required Result addColumn(AddColumn value),
    @required Result deleteTask(DeleteTask value),
    @required Result reorderTask(ReorderTask value),
    @required Result moveTask(MoveTask value),
    @required Result addTask(AddTask value),
  }) {
    assert(getColumns != null);
    assert(addColumn != null);
    assert(deleteTask != null);
    assert(reorderTask != null);
    assert(moveTask != null);
    assert(addTask != null);
    return reorderTask(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getColumns(GetColumns value),
    Result addColumn(AddColumn value),
    Result deleteTask(DeleteTask value),
    Result reorderTask(ReorderTask value),
    Result moveTask(MoveTask value),
    Result addTask(AddTask value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (reorderTask != null) {
      return reorderTask(this);
    }
    return orElse();
  }
}

abstract class ReorderTask implements KanbanEvent {
  const factory ReorderTask(int column, int from, int to) = _$ReorderTask;

  int get column;
  int get from;
  int get to;

  ReorderTask copyWith({int column, int from, int to});
}

class _$MoveTask implements MoveTask {
  const _$MoveTask(this.data) : assert(data != null);

  @override
  final KData data;

  @override
  String toString() {
    return 'KanbanEvent.moveTask(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MoveTask &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  _$MoveTask copyWith({
    Object data = freezed,
  }) {
    return _$MoveTask(
      data == freezed ? this.data : data as KData,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getColumns(),
    @required Result addColumn(String title),
    @required Result deleteTask(int column, KTask task),
    @required Result reorderTask(int column, int from, int to),
    @required Result moveTask(KData data),
    @required Result addTask(int column, String title),
  }) {
    assert(getColumns != null);
    assert(addColumn != null);
    assert(deleteTask != null);
    assert(reorderTask != null);
    assert(moveTask != null);
    assert(addTask != null);
    return moveTask(data);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getColumns(),
    Result addColumn(String title),
    Result deleteTask(int column, KTask task),
    Result reorderTask(int column, int from, int to),
    Result moveTask(KData data),
    Result addTask(int column, String title),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (moveTask != null) {
      return moveTask(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getColumns(GetColumns value),
    @required Result addColumn(AddColumn value),
    @required Result deleteTask(DeleteTask value),
    @required Result reorderTask(ReorderTask value),
    @required Result moveTask(MoveTask value),
    @required Result addTask(AddTask value),
  }) {
    assert(getColumns != null);
    assert(addColumn != null);
    assert(deleteTask != null);
    assert(reorderTask != null);
    assert(moveTask != null);
    assert(addTask != null);
    return moveTask(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getColumns(GetColumns value),
    Result addColumn(AddColumn value),
    Result deleteTask(DeleteTask value),
    Result reorderTask(ReorderTask value),
    Result moveTask(MoveTask value),
    Result addTask(AddTask value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (moveTask != null) {
      return moveTask(this);
    }
    return orElse();
  }
}

abstract class MoveTask implements KanbanEvent {
  const factory MoveTask(KData data) = _$MoveTask;

  KData get data;

  MoveTask copyWith({KData data});
}

class _$AddTask implements AddTask {
  const _$AddTask(this.column, this.title)
      : assert(column != null),
        assert(title != null);

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
        (other is AddTask &&
            (identical(other.column, column) ||
                const DeepCollectionEquality().equals(other.column, column)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(column) ^
      const DeepCollectionEquality().hash(title);

  @override
  _$AddTask copyWith({
    Object column = freezed,
    Object title = freezed,
  }) {
    return _$AddTask(
      column == freezed ? this.column : column as int,
      title == freezed ? this.title : title as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getColumns(),
    @required Result addColumn(String title),
    @required Result deleteTask(int column, KTask task),
    @required Result reorderTask(int column, int from, int to),
    @required Result moveTask(KData data),
    @required Result addTask(int column, String title),
  }) {
    assert(getColumns != null);
    assert(addColumn != null);
    assert(deleteTask != null);
    assert(reorderTask != null);
    assert(moveTask != null);
    assert(addTask != null);
    return addTask(column, title);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getColumns(),
    Result addColumn(String title),
    Result deleteTask(int column, KTask task),
    Result reorderTask(int column, int from, int to),
    Result moveTask(KData data),
    Result addTask(int column, String title),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addTask != null) {
      return addTask(column, title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getColumns(GetColumns value),
    @required Result addColumn(AddColumn value),
    @required Result deleteTask(DeleteTask value),
    @required Result reorderTask(ReorderTask value),
    @required Result moveTask(MoveTask value),
    @required Result addTask(AddTask value),
  }) {
    assert(getColumns != null);
    assert(addColumn != null);
    assert(deleteTask != null);
    assert(reorderTask != null);
    assert(moveTask != null);
    assert(addTask != null);
    return addTask(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getColumns(GetColumns value),
    Result addColumn(AddColumn value),
    Result deleteTask(DeleteTask value),
    Result reorderTask(ReorderTask value),
    Result moveTask(MoveTask value),
    Result addTask(AddTask value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addTask != null) {
      return addTask(this);
    }
    return orElse();
  }
}

abstract class AddTask implements KanbanEvent {
  const factory AddTask(int column, String title) = _$AddTask;

  int get column;
  String get title;

  AddTask copyWith({int column, String title});
}
