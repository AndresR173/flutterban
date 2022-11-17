import 'package:flutter/material.dart';

import '../../../data/data.dart';
import '../../../models/models.dart';

class KanbanBoardNotifier extends ChangeNotifier {
  List<KColumn> columns = Data.getColumns();

  void deleteItem(int columnIndex, KTask task) {
    columns[columnIndex].children.remove(task);
    notifyListeners();
  }

  void handleReOrder(int oldIndex, int newIndex, int index) {
    if (oldIndex != newIndex) {
      final task = columns[index].children[oldIndex];
      columns[index].children.remove(task);
      columns[index].children.insert(newIndex, task);
      notifyListeners();
    }
  }

  void addColumn(String title) {
    columns.add(KColumn(
      title: title,
      children: List.of([]),
    ));
    notifyListeners();
  }

  void addTask(String title, int column) {
    columns[column].children.add(KTask(title: title));
    notifyListeners();
  }

  void dragHandler(KData data, int index) {
    columns[data.from].children.remove(data.task);
    columns[index].children.add(data.task);
    notifyListeners();
  }
}
