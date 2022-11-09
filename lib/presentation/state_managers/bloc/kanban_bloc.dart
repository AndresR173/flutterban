import 'package:bloc/bloc.dart';

import '../../../data/data.dart' as data;
import '../../../models/models.dart';
import 'kanban_event.dart';
import 'kanban_state.dart';

export 'kanban_event.dart';
export 'kanban_state.dart';

class KanbanBloc extends Bloc<KanbanEvent, KanbanState> {
  List<KColumn> columns = data.columns;

  KanbanBloc() : super(KanbanState.initial()) {
    on<KanbanEvent>((event, emit) {
      final currentState = state.copyWith();
      emit(const KanbanState(status: Status.loading));
      event.when(
        getColumns: () => emit(
          currentState.copyWith(columns: columns, status: Status.loaded),
        ),
        addColumn: (title) {
          final updatedColumns = currentState.columns;
          updatedColumns.add(KColumn(title: title, children: []));
          emit(
            currentState.copyWith(
              columns: updatedColumns,
              status: Status.loaded,
            ),
          );
        },
        deleteTask: (column, task) {
          final updatedColumns = currentState.columns;
          updatedColumns[column].children.remove(task);
          emit(
            currentState.copyWith(
              columns: updatedColumns,
              status: Status.loaded,
            ),
          );
        },
        reorderTask: (column, from, to) {
          if (from != to) {
            final updatedColumns = currentState.columns;
            final task = columns[column].children[from];
            updatedColumns[column].children.remove(task);
            updatedColumns[column].children.insert(to, task);
            emit(
              currentState.copyWith(
                columns: updatedColumns,
                status: Status.loaded,
              ),
            );
          }
        },
        moveTask: (data, column) {
          final updatedColumns = currentState.columns;
          updatedColumns[data.from].children.remove(data.task);
          updatedColumns[column].children.add(data.task);
          emit(
            currentState.copyWith(
              columns: updatedColumns,
              status: Status.loaded,
            ),
          );
        },
        addTask: (column, title) {
          final updatedColumns = currentState.copyWith().columns;
          updatedColumns[column].children.add(KTask(title: title));
          final newState = state.copyWith(
              columns: List.of(updatedColumns), status: Status.loaded);
          emit(newState);
        },
      );
    });
  }
}
