import 'package:Flutterban/domain/entities/data.dart';
import 'package:Flutterban/domain/entities/task.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'kanban_event.freezed.dart';

@freezed
@immutable
abstract class KanbanEvent with _$KanbanEvent {
  const factory KanbanEvent.getColumns() = GetColumns;
  const factory KanbanEvent.addColumn(String title) = AddColumn;
  const factory KanbanEvent.deleteTask(int column, KTask task) = DeleteTask;
  const factory KanbanEvent.reorderTask(int column, int from, int to) =
      ReorderTask;
  const factory KanbanEvent.moveTask(KData data) = MoveTask;
  const factory KanbanEvent.addTask(int column, String title) = AddTask;
}
