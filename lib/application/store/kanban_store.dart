// ignore_for_file: prefer_final_fields, prefer_const_constructors

import 'package:mobx/mobx.dart';

import '../../domain/entities/column.dart';
import '../../domain/entities/data.dart';
import '../../domain/entities/task.dart';

part 'kanban_store.g.dart';

class KanbanStore = _KanbanStore with _$KanbanStore;

abstract class _KanbanStore with Store {
  @observable
  ObservableList<KColumn> _columns = ObservableList<KColumn>.of([
    KColumn(
      title: 'To Do',
      children: ObservableList.of(
        [
          KTask(title: 'ToDo 1'),
          KTask(title: 'ToDo 2'),
        ],
      ),
    ),
  ]);

  ObservableList<KColumn> get items => _columns;

  @action
  void addColumn({required String title}) {
    _columns.add(KColumn(title: title, children: ObservableList.of([])));
  }

  @action
  void addTask({
    required int column,
    required String title,
  }) {
    _columns[column].children.add(KTask(title: title));
  }

  @action
  void arrangeTask({
    required int column,
    required int from,
    required int to,
  }) {
    final task = _columns[column].children[from];
    _columns[column].children.remove(task);
    _columns[column].children.insert(to, task);
  }

  @action
  void deleteTask({
    required int column,
    required KTask task,
  }) {
    _columns[column].children.remove(task);
  }

  @action
  void moveTask({
    required int column,
    required KData data,
  }) {
    _columns[data.from].children.remove(data.task);
    _columns[column].children.add(data.task);
  }
}
