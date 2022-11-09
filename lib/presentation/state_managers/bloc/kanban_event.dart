import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/models.dart';

part 'kanban_event.freezed.dart';

@freezed
@immutable
class KanbanEvent with _$KanbanEvent {
  const factory KanbanEvent.getColumns() = GetColumns;
  const factory KanbanEvent.addColumn(String title) = AddColumn;
  const factory KanbanEvent.deleteTask(int column, KTask task) = DeleteTask;
  const factory KanbanEvent.reorderTask(int column, int from, int to) =
      ReorderTask;
  const factory KanbanEvent.moveTask(KData data, int column) = MoveTask;
  const factory KanbanEvent.addTask(int column, String title) = AddTask;
}
