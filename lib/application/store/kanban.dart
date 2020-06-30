import 'package:Flutterban/domain/entities/data.dart';
import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';

import '../../domain/entities/column.dart';
import '../../domain/entities/task.dart';

part 'kanban.g.dart';

class Kanban = _Kanban with _$Kanban;

abstract class _Kanban with Store {
  @observable
  ObservableList<KColumn> columns = ObservableList<KColumn>.of([
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
  ]);

  @action
  void addColumn({@required String title}) {
    columns.add(KColumn(title: title, children: []));
  }

  @action
  void addTask({@required int column, @required String title}) {
    columns[column].children.add(KTask(title: title));
  }

  @action
  void arrangeTask({
    @required int column,
    @required int from,
    @required int to,
  }) {
    final task = columns[column].children[from];
    columns[column].children.remove(task);
    columns[column].children.insert(to, task);
  }

  @action
  void deleteTask({@required int column, @required KTask task}) {
    columns[column].children.remove(task);
  }

  @action
  void moveTask({@required int column, @required KData data}) {
    columns[data.from].children.remove(data.task);
    columns[column].children.add(data.task);
  }
}
