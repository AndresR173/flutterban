// ignore_for_file: prefer_final_fields, prefer_const_constructors

import 'package:mobx/mobx.dart';

import '../../../models/column.dart' as column;
import '../../../models/mobx_column.dart';
import '../../../models/models.dart' hide KColumn;

part 'kanban_store.g.dart';

class KanbanStore = _KanbanStore with _$KanbanStore;

abstract class _KanbanStore with Store {
  @observable
  ObservableList<KColumn> _columns = ObservableList.of(
    [
      KColumn(
        title: 'To Do',
        children: ObservableList.of(
          [
            KTask(title: 'ToDo 1'),
            KTask(title: 'ToDo 2'),
          ],
        ),
      ),
      KColumn(
        title: 'In Progress',
        children: ObservableList.of(
          [
            KTask(title: 'ToDo 3'),
          ],
        ),
      ),
      KColumn(
        title: 'Done',
        children: ObservableList.of(
          [
            KTask(title: 'ToDo 4'),
            KTask(title: 'ToDo 5'),
          ],
        ),
      )
    ],
  );

  @computed
  ObservableList<column.KColumn> get items {
    return ObservableList.of(
      _columns.map(
        (element) => column.KColumn(
          title: element.title,
          children: List.of(
            element.children,
          ),
        ),
      ),
    );
  }

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
