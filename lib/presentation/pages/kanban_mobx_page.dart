import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../models/data.dart';
import '../../models/task.dart';
import '../state_managers/mobx/kanban_store.dart';
import '../widgets/kanban_board.dart';
import 'kanban_board_controller.dart';

class KanbanMobxPage extends StatelessWidget implements KanbanBoardController {
  final KanbanStore _store = KanbanStore();

  KanbanMobxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MobX')),
      body: SafeArea(
        child: Observer(
          builder: (context) {
            return KanbanBoard(
              controller: this,
              columns: _store.items,
            );
          },
        ),
      ),
    );
  }

  @override
  void handleReOrder(int oldIndex, int newIndex, int index) {
    if (oldIndex != newIndex) {
      _store.arrangeTask(column: index, from: oldIndex, to: newIndex);
    }
  }

  @override
  void addColumn(String title) {
    _store.addColumn(title: title);
  }

  @override
  void addTask(String title, int column) {
    _store.addTask(column: column, title: title);
  }

  @override
  void deleteItem(int columnIndex, KTask task) {
    _store.deleteTask(column: columnIndex, task: task);
  }

  @override
  void dragHandler(KData data, int index) {
    _store.moveTask(column: index, data: data);
  }
}
