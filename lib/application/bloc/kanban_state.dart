import 'package:Flutterban/domain/entities/column.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'kanban_state.freezed.dart';

enum Status { loading, loaded }

@freezed
abstract class KanbanState implements _$KanbanState {
  const factory KanbanState(
      {@Default([]) List<KColumn> columns, Status status}) = _KanbanState;

  factory KanbanState.initial() {
    return const KanbanState(columns: [], status: Status.loading);
  }

  factory KanbanState.loading() {
    return const KanbanState(columns: [], status: Status.loading);
  }

  factory KanbanState.loaded(List<KColumn> projects) {
    return KanbanState(columns: projects, status: Status.loaded);
  }
}
