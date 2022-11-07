import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/column.dart';

part 'kanban_state.freezed.dart';

enum Status { loading, loaded }

@Freezed(makeCollectionsUnmodifiable: false)
abstract class KanbanState implements _$KanbanState {
  const factory KanbanState({
    @Default([]) List<KColumn> columns,
    required Status status,
  }) = _KanbanState;

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
