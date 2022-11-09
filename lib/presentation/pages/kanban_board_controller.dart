import '../../models/models.dart';

abstract class KanbanBoardController {
  void deleteItem(int columnIndex, KTask task);
  void handleReOrder(int oldIndex, int newIndex, int column);
  void dragHandler(KData data, int index);
  void addColumn(String title);
  void addTask(String title, int column);
}
