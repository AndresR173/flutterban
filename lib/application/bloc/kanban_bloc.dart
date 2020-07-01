import 'dart:async';

import 'package:Flutterban/domain/entities/column.dart';
import 'package:Flutterban/domain/entities/data.dart';
import 'package:Flutterban/domain/entities/task.dart';
import 'package:bloc/bloc.dart';

import 'kanban_event.dart';
import 'kanban_state.dart';

export 'kanban_event.dart';
export 'kanban_state.dart';

class KanbanBloc extends Bloc<KanbanEvent, KanbanState> {
  List<KColumn> columns = [
    KColumn(
      title: 'To Do',
      children: [
        const KTask(title: 'ToDo 1'),
        const KTask(title: 'ToDo 2'),
      ],
    ),
    KColumn(
      title: 'In Progress',
      children: [
        const KTask(title: 'ToDo 3'),
      ],
    ),
    KColumn(
      title: 'Done',
      children: [
        const KTask(title: 'ToDo 4'),
        const KTask(title: 'ToDo 5'),
      ],
    )
  ];

  @override
  KanbanState get initialState => KanbanState.initial();

  @override
  Stream<KanbanState> mapEventToState(
    KanbanEvent event,
  ) async* {
    final currentState = state;
    final Stream<KanbanState> newStateStream = event.when(
      getColumns: () async* {
        yield currentState.copyWith(columns: columns, status: Status.loaded);
      },
      addColumn: (String title) async* {
        var updatedColumns = currentState.columns;
        updatedColumns.add(KColumn(title: title, children: []));
        yield currentState.copyWith(
            columns: updatedColumns, status: Status.loaded);
      },
      deleteTask: (int column, KTask task) async* {
        var updatedColumns = currentState.columns;
        updatedColumns[column].children.remove(task);
        yield currentState.copyWith(
            columns: updatedColumns, status: Status.loaded);
      },
      reorderTask: (int column, int from, int to) async* {
        if (from != to) {
          var updatedColumns = currentState.columns;
          final task = columns[column].children[from];
          updatedColumns[column].children.remove(task);
          updatedColumns[column].children.insert(to, task);
          yield currentState.copyWith(
              columns: updatedColumns, status: Status.loaded);
        }
      },
      moveTask: (KData data) async* {
        var updatedColumns = currentState.columns;
        updatedColumns[data.from].children.remove(data.task);
        updatedColumns[data.column].children.add(data.task);
        yield currentState.copyWith(
            columns: updatedColumns, status: Status.loaded);
      },
      addTask: (int column, String title) async* {
        var updatedColumns = currentState.columns;
        updatedColumns[column].children.add(KTask(title: title));
        yield currentState.copyWith(
            columns: updatedColumns, status: Status.loaded);
      },
    );
    yield* newStateStream;
  }
}
